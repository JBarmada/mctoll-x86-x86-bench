#!/usr/bin/env python3
import json
import numpy as np
import matplotlib.pyplot as plt
import math

# --- CONFIGURATION ---
JSON_INPUT_FILE = "benchmark_results.json"
CHART_OUTPUT_FILE = "relative_performance_graph.png"
Y_AXIS_LABEL_INTERVAL = 10

# --- NEW: COLOR CONFIGURATION ---
# You can change these color values to customize the look of the graph.
# Matplotlib accepts color names (e.g., 'black', 'lightgray') or hex codes (e.g., '#333333').
COLOR_CONFIG = {
    "background": "#2E2E2E",      # A dark gray background
    "text": "white",              # White text for good contrast
    "slower_bar": "firebrick",    # Red for slower results
    "faster_bar": "mediumseagreen", # Green for faster results
    "grid_lines": "#555555",      # A lighter gray for grid lines
    "error_bar": "silver"         # Color for the error bar caps
}
# -----------------------------

def create_relative_performance_graph():
    """
    Reads benchmark data, asks the user how to sort and what to display,
    and creates a horizontal bar chart.
    """
    print(f"Reading data from {JSON_INPUT_FILE}...")
    try:
        with open(JSON_INPUT_FILE, 'r') as f:
            data = json.load(f)
    except FileNotFoundError:
        print(f"ERROR: '{JSON_INPUT_FILE}' not found. Please run benchmark.py first.")
        return
    except json.JSONDecodeError:
        print(f"ERROR: '{JSON_INPUT_FILE}' is empty or corrupted.")
        return

    # --- Prepare data for plotting ---
    all_problem_data = []
    for problem, results in data.items():
        if "original" in results and "raised" in results:
            delta = results["raised"]["average_ms"] - results["original"]["average_ms"]
            stdev_orig_sq = results["original"]["stdev_ms"] ** 2
            stdev_raised_sq = results["raised"]["stdev_ms"] ** 2
            combined_error = math.sqrt(stdev_orig_sq + stdev_raised_sq)
            
            all_problem_data.append({
                "name": problem.replace("problem", ""),
                "delta": delta,
                "error": combined_error,
                # Use colors from the new config dictionary
                "color": COLOR_CONFIG["slower_bar"] if delta > 0 else COLOR_CONFIG["faster_bar"]
            })
            
    if not all_problem_data:
        print("ERROR: No problems with complete data to plot.")
        return

    # --- Get user input for sorting and filtering ---
    sort_choice = input("Sort by 'name' (numerical order) or 'delta' (performance impact)? [delta]: ").lower().strip()

    plot_data = []
    plot_title = ""

    try:
        if sort_choice == 'name':
            all_problem_data.sort(key=lambda p: int(p["name"]))
            start_num = int(input(f"Enter START problem number (1-{len(all_problem_data)}): "))
            end_num = int(input(f"Enter END problem number ({start_num}-{len(all_problem_data)}): "))
            
            for p in all_problem_data:
                if start_num <= int(p["name"]) <= end_num:
                    plot_data.append(p)
            plot_title = f'Performance Deltas for Problems {start_num}-{end_num}'
            
        else: # Default to sorting by delta
            all_problem_data.sort(key=lambda p: abs(p["delta"]), reverse=True)
            default_runs = min(20, len(all_problem_data))
            num_to_plot_input = input(f"Enter the number of top results to plot (default: {default_runs}): ")
            num_to_plot = int(num_to_plot_input) if num_to_plot_input else default_runs
            
            plot_data = all_problem_data[:num_to_plot]
            plot_data.reverse()
            plot_title = f'Top {len(plot_data)} Problems by Performance Delta'

    except (ValueError, TypeError):
        print("Invalid input. Please enter a valid number. Exiting.")
        return

    if not plot_data:
        print("No data in the selected range to plot.")
        return

    plot_data.sort(key=lambda p: p["delta"])

    problem_labels = [p["name"] for p in plot_data]
    performance_deltas = [p["delta"] for p in plot_data]
    error_bars = [p["error"] for p in plot_data]
    bar_colors = [p["color"] for p in plot_data]

    print(f"\nGenerating graph for {len(plot_data)} problems...")

    # --- Create the Horizontal Bar Graph ---
    y_pos = np.arange(len(problem_labels))
    fig, ax = plt.subplots(figsize=(12, 10))
    
    # --- APPLYING COLORS ---
    fig.patch.set_facecolor(COLOR_CONFIG["background"])
    ax.set_facecolor(COLOR_CONFIG["background"])

    ax.barh(y_pos, performance_deltas, xerr=error_bars, align='center', color=bar_colors, ecolor=COLOR_CONFIG["error_bar"], capsize=3)
    # ax.barh(y_pos, performance_deltas, align='center', color=bar_colors, ecolor=COLOR_CONFIG["error_bar"], capsize=3)
    ax.axvline(0, color=COLOR_CONFIG["text"], linewidth=0.8, linestyle='--')

    if sort_choice == 'name':
        display_labels = [label if i % Y_AXIS_LABEL_INTERVAL == 0 or len(problem_labels) <= 20 else "" for i, label in enumerate(problem_labels)]
    else:
        display_labels = problem_labels
    
    ax.set_yticks(y_pos, labels=display_labels)
    ax.invert_yaxis()
    
    # Set colors for all text elements
    ax.set_xlabel('← Faster | Performance Delta (ms) | Slower →', color=COLOR_CONFIG["text"])
    ax.set_title(plot_title, color=COLOR_CONFIG["text"])
    ax.tick_params(axis='x', colors=COLOR_CONFIG["text"], rotation=45) # Rotate x-axis ticks for readability
    ax.tick_params(axis='y', colors=COLOR_CONFIG["text"])
    ax.spines['bottom'].set_color(COLOR_CONFIG["text"])
    ax.spines['top'].set_color(COLOR_CONFIG["text"]) 
    ax.spines['right'].set_color(COLOR_CONFIG["text"])
    ax.spines['left'].set_color(COLOR_CONFIG["text"])
    
    ax.xaxis.grid(True, linestyle='--', which='major', color=COLOR_CONFIG["grid_lines"], alpha=.25)

    # --- NEW: Manually set X-axis ticks for more detail ---
    # Find the overall min and max delta to set the axis limits
    min_delta = min(performance_deltas)
    max_delta = max(performance_deltas)
    
    # Add a little padding to the limits, ensuring it's symmetrical around zero if possible
    abs_max = max(abs(min_delta), abs(max_delta))
    axis_limit = math.ceil(abs_max * 1.1)
    
    # Generate about 15 ticks within this range
    num_ticks = 15
    ax.set_xticks(np.linspace(-axis_limit, axis_limit, num_ticks))
    # --- END OF NEW LOGIC ---

    fig.tight_layout(pad=1.5)
    plt.savefig(CHART_OUTPUT_FILE, dpi=300, facecolor=fig.get_facecolor())
    
    print(f"Graph saved successfully to {CHART_OUTPUT_FILE}")

if __name__ == "__main__":
    create_relative_performance_graph()
