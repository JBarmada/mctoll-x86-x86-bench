#!/usr/bin/env python3
import json
import numpy as np
import matplotlib.pyplot as plt

# --- CONFIGURATION ---
JSON_INPUT_FILE = "benchmark_results.json"
CHART_OUTPUT_FILE = "benchmark_graph.png"
# --------------------

def create_benchmark_graph():
    """
    Reads benchmark data and creates a well-spaced, grouped bar chart.
    """
    print(f"Reading data from {JSON_INPUT_FILE}...")
    try:
        with open(JSON_INPUT_FILE, 'r') as f:
            data = json.load(f)
    except FileNotFoundError:
        print(f"ERROR: The input file '{JSON_INPUT_FILE}' was not found.")
        print("Please run the benchmark.py script first to generate the data.")
        return
    except json.JSONDecodeError:
        print(f"ERROR: The JSON file '{JSON_INPUT_FILE}' is empty or corrupted.")
        return

    # Prepare data for plotting (with numerical sorting)
    problem_labels = []
    original_avg_times = []
    raised_avg_times = []

    try:
        sorted_items = sorted(data.items(), key=lambda item: int(item[0].replace("problem", "")))
    except (ValueError, TypeError):
        print("ERROR: Could not numerically sort problem names. Falling back to alphabetical sort.")
        sorted_items = sorted(data.items())

    for problem, results in sorted_items:
        if "original" in results and "raised" in results:
            problem_num = problem.replace("problem", "")
            problem_labels.append(problem_num)
            original_avg_times.append(results["original"]["average_ms"])
            raised_avg_times.append(results["raised"]["average_ms"])
            
    if not problem_labels:
        print("ERROR: No problems with complete data to plot.")
        return

    print(f"Generating bar graph for {len(problem_labels)} problems...")

    # --- ADJUSTMENTS FOR WIDER, SPACED-OUT BARS ---

    # 1. Set the desired width for a single bar.
    width = 0.8  # As you requested

    # 2. Set the spacing between each group of bars.
    #    The total space for each group will be this value.
    #    It must be larger than (2 * width). Let's use 2.0.
    group_gap = 2.0
    
    # 3. Calculate the center position for each group on the x-axis.
    x = np.arange(len(problem_labels)) * group_gap

    # 4. Calculate the position for each bar within the group.
    #    The offsets are now relative to the new, spaced-out centers.
    bar1_pos = x - width/2
    bar2_pos = x + width/2
    # --- END OF ADJUSTMENTS ---


    # --- Create the Bar Graph ---
    fig, ax = plt.subplots(figsize=(20, 9))
    
    rects1 = ax.bar(bar1_pos, original_avg_times, width, label='Original Compiled')
    rects2 = ax.bar(bar2_pos, raised_avg_times, width, label='Raised (McToll)')

    # Add labels, title, and ticks
    ax.set_ylabel('Average Runtime (ms)', fontsize=12)
    ax.set_xlabel('Problem Number', fontsize=12)
    ax.set_title('Performance Benchmark: Original vs. McToll-Raised Code', fontsize=16)
    ax.set_xticks(x, problem_labels, rotation=90) # Set labels at the center of each group
    ax.legend()
    ax.grid(axis='y', linestyle='--', alpha=0.7)

    fig.tight_layout(pad=1.5)
    
    #mess with whitespace at beginning and end of axis
    plt.margins(x=0.01)
    # Save the figure to a file
    plt.savefig(CHART_OUTPUT_FILE, dpi=300)
    
    print(f"Graph saved successfully to {CHART_OUTPUT_FILE}")

if __name__ == "__main__":
    create_benchmark_graph()