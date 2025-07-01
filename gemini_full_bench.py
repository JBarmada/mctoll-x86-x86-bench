#!/usr/bin/env python3
import os
import subprocess
import time
import glob
import statistics
import json

# --- CONFIGURATION ---
# Directories relative to where the script is run
ORIGINAL_BIN_DIR = "original_dynamic_binaries" # Assumes you have compiled the originals here
# The script will find McToll results here
RESULTS_DIR = "mctoll_results"

# Benchmark settings
NUM_RUNS = 500
WARMUP_RUNS = 25
TIMEOUT_SECONDS = 10
JSON_OUTPUT_FILE = "benchmark_results.json"
# --------------------

def run_benchmark(executable_path: str) -> dict | None:
    """Runs a given executable multiple times and returns its performance metrics."""
    if not os.path.exists(executable_path):
        return None

    timings = []
    try:
        # Run the executable NUM_RUNS times
        for _ in range(NUM_RUNS):
            start_time = time.perf_counter()
            subprocess.run(
                [executable_path],
                check=True,
                capture_output=True,
                timeout=TIMEOUT_SECONDS
            )
            end_time = time.perf_counter()
            timings.append(end_time - start_time)
        
        # Discard warmup runs and calculate metrics
        if len(timings) <= WARMUP_RUNS:
            return None
            
        valid_runs = timings[WARMUP_RUNS:]
        if not valid_runs:
            return None

        # Return a dictionary of the calculated metrics in milliseconds
        return {
            "average_ms": statistics.mean(valid_runs) * 1000,
            "median_ms": statistics.median(valid_runs) * 1000,
            "stdev_ms": statistics.stdev(valid_runs) * 1000 if len(valid_runs) > 1 else 0,
            "min_ms": min(valid_runs) * 1000,
            "max_ms": max(valid_runs) * 1000,
        }
        
    except (subprocess.CalledProcessError, subprocess.TimeoutExpired, FileNotFoundError):
        # If any run fails, we consider the whole benchmark for that file invalid
        return None

def main():
    """
    Finds and benchmarks both original and raised test executables,
    then saves the results to a JSON file.
    """
    print("--- Starting Performance Benchmark: Original vs. Raised Code ---")
    
    all_results = {}
    
    # Assuming problems are named problem1, problem2, etc. up to 164
    for i in range(1, 165):
        problem_name = f"problem{i}"
        print(f"\n--- Processing: {problem_name} ---")

        # Define paths for both executables
        original_exe_path = os.path.join(ORIGINAL_BIN_DIR, f"{problem_name}_test")
        raised_exe_path = os.path.join(RESULTS_DIR, problem_name, f"{problem_name}_raised_test")
        
        problem_results = {}

        # Benchmark the original code
        print(f"  - Benchmarking original binary...")
        original_metrics = run_benchmark(original_exe_path)
        if original_metrics:
            problem_results["original"] = original_metrics
            print(f"    -> Avg: {original_metrics['average_ms']:.3f} ms")
        else:
            print(f"    -> Could not benchmark original binary (not found or failed to run).")

        # Benchmark the raised code
        print(f"  - Benchmarking raised binary...")
        raised_metrics = run_benchmark(raised_exe_path)
        if raised_metrics:
            problem_results["raised"] = raised_metrics
            print(f"    -> Avg: {raised_metrics['average_ms']:.3f} ms")
        else:
            print(f"    -> Could not benchmark raised binary (not found or failed to run).")
        
        # Store results if we have any data for this problem
        if problem_results:
            all_results[problem_name] = problem_results

    # Write all collected data to the JSON file
    print(f"\n--- Benchmark Complete ---")
    print(f"Saving all results to {JSON_OUTPUT_FILE}...")
    with open(JSON_OUTPUT_FILE, 'w') as f:
        json.dump(all_results, f, indent=4)
    
    print("Done.")


if __name__ == "__main__":
    main()
