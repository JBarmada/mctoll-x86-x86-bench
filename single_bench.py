#!/usr/bin/env python3
import os
import subprocess
import time
import glob
import statistics

# --- CONFIGURATION ---
# The directory containing the results of your mctoll pipeline.
# This path is relative to where the script is run.
RESULTS_DIR = "mctoll_results"

# Total number of times to run each executable.
NUM_RUNS = 500

# Number of initial runs to discard to allow for CPU cache warmup, etc.
WARMUP_RUNS = 25
# --------------------

# This prevents the script from hanging on a buggy executable.
TIMEOUT_SECONDS = 5

def main():
    """
    Finds and benchmarks all raised test executables.
    """
    print("--- Starting Performance Benchmark for Raised Executables ---")

    # The pattern to find all the test executables we want to benchmark
    search_pattern = os.path.join(RESULTS_DIR, 'problem*', '*_raised_test')
    
    # Use glob to find all files matching the pattern
    executable_paths = sorted(glob.glob(search_pattern))

    if not executable_paths:
        print(f"\nERROR: No executables found matching the pattern '{search_pattern}'.")
        print("Please ensure the script is run from '/home/jad.barmada/mctoll-x86-x86' and that the 'mctoll_results' directory exists.")
        return

    print(f"Found {len(executable_paths)} executables to benchmark.\n")

    # Loop through each found executable
    for exe_path in executable_paths:
        print(f"--- Benchmarking: {exe_path} ---")
        
        timings = []
        try:
            # Run the executable NUM_RUNS times and record the duration of each run
            for i in range(NUM_RUNS):
                start_time = time.perf_counter()
                # Run the executable as a subprocess.
                # capture_output=True prevents the program's own output (e.g., "All tests passed")
                # from cluttering our benchmark results.
                subprocess.run([f"./{exe_path}"], 
                               check=True, capture_output=True, 
                               timeout=TIMEOUT_SECONDS)
                end_time = time.perf_counter()
                timings.append(end_time - start_time)

            # --- Process the results ---
            
            # Ensure we have enough data to work with
            if len(timings) <= WARMUP_RUNS:
                print("  - Not enough successful runs to provide meaningful metrics.")
                continue

            # Discard the initial warm-up runs
            valid_runs = timings[WARMUP_RUNS:]
            num_valid_runs = len(valid_runs)

            # Calculate metrics (converting seconds to milliseconds)
            avg_time_ms = statistics.mean(valid_runs) * 1000
            median_time_ms = statistics.median(valid_runs) * 1000
            min_time_ms = min(valid_runs) * 1000
            max_time_ms = max(valid_runs) * 1000
            
            # Standard deviation requires at least 2 data points
            stdev_ms = 0
            if num_valid_runs > 1:
                stdev_ms = statistics.stdev(valid_runs) * 1000

            # Print the formatted results
            print(f"  Results based on {num_valid_runs} runs (after discarding first {WARMUP_RUNS}):")
            print(f"    Average Time: {avg_time_ms:.3f} ms")
            print(f"    Median Time:  {median_time_ms:.3f} ms (More resistant to outliers)")
            print(f"    Std. Dev.:    {stdev_ms:.3f} ms (Lower is more consistent)")
            print(f"    Min Time:     {min_time_ms:.3f} ms (Best run)")
            print(f"    Max Time:     {max_time_ms:.3f} ms (Worst run)")

        except FileNotFoundError:
            print(f"  - ERROR: Could not find executable at '{exe_path}'. Skipping.")
            continue
        except subprocess.CalledProcessError:
            print(f"  - ERROR: The executable failed to run (returned a non-zero exit code). Skipping.")
            continue
        except Exception as e:
            print(f"  - An unexpected error occurred: {e}")
            continue
    
    print("\n--- Benchmark Complete ---")


if __name__ == "__main__":
    main()
