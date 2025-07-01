import os
import subprocess
import time
import statistics

BASE_RESULTS_DIR = "/home/jad.barmada/mctoll-x86-x86/mctoll_results"
WARMUP_RUNS = 25
TOTAL_RUNS = 500
MAX_TIME_PER_RUN = 2.0  # seconds, adjust if needed

def find_executables(base_dir):
    for root, dirs, files in os.walk(base_dir):
        for file in files:
            if file.endswith("_raised_test"):
                yield os.path.join(root, file)


def run_and_time(exec_path):
    try:
        start = time.perf_counter()
        result = subprocess.run([exec_path], capture_output=True, check=True, timeout=MAX_TIME_PER_RUN)
        end = time.perf_counter()
        return end - start, True, False  # (time, success, timeout)
    except subprocess.TimeoutExpired:
        return None, False, True
    except subprocess.CalledProcessError:
        return None, False, False


def evaluate(exec_path):
    print(f"\n🧪 Evaluating: {exec_path}")
    times = []
    failed_runs = 0
    timeouts = 0

    for i in range(TOTAL_RUNS):
        t, ok, is_timeout = run_and_time(exec_path)
        if not ok:
            if is_timeout:
                timeouts += 1
            else:
                failed_runs += 1
            continue
        times.append(t)
        if i % 100 == 0:
            print(f"  ➤ Run {i+1}/{TOTAL_RUNS}")

    if len(times) <= WARMUP_RUNS:
        print(f"  ❌ Not enough successful runs ({len(times)}), skipping.")
        return

    valid_times = times[WARMUP_RUNS:]
    avg = statistics.mean(valid_times)
    stdev = statistics.stdev(valid_times)
    print(f"  ✅ Avg: {avg:.6f}s | StdDev: {stdev:.6f}s | Min: {min(valid_times):.6f}s | Max: {max(valid_times):.6f}s")
    print(f"  ❗ Skipped: {WARMUP_RUNS} warmups, {failed_runs} failed runs, {timeouts} timeouts")

def main():
    all_execs = list(find_executables(BASE_RESULTS_DIR))
    print(f"🔍 Found {len(all_execs)} raised test executables.")

    for exe in sorted(all_execs):
        evaluate(exe)

if __name__ == "__main__":
    main()
