import os
import subprocess
import glob

# --- Configuration ---
BASE_DIR = "."
# Directories for this new "Whole Program" pipeline
ORIGINAL_BIN_DIR = "original_binaries"
RAISED_FULL_IR_DIR = "raised_full_program_ir"
RAISED_FULL_BIN_DIR = "raised_full_binaries"

MCTOLL_COMMAND = "/home/ismail.elsissi/jad/llvm-project/build/bin/llvm-mctoll"
CLANG_COMMAND = "clang"
# We still want debug info and no optimizations for the best chance of success
CFLAGS = ['-g', '-O0']

# --- Script Logic ---

def main():
    print("Starting Method 2: Whole Program raising and testing pipeline...")

    # Create all necessary output directories for this method
    for dirname in [ORIGINAL_BIN_DIR, RAISED_FULL_IR_DIR, RAISED_FULL_BIN_DIR]:
        os.makedirs(os.path.join(BASE_DIR, dirname), exist_ok=True)

    # Find all 'problem*' directories
    problem_dirs = sorted(glob.glob(os.path.join(BASE_DIR, 'problem*')))
    if not problem_dirs:
        print("ERROR: No 'problem*' directories found.")
        return
    print(f"Found {len(problem_dirs)} problem directories to process.")

    for dir_path in problem_dirs:
        if not os.path.isdir(dir_path):
            continue

        problem_name = os.path.basename(dir_path)
        print(f"\n--- Processing: {problem_name} ---")

        # Define all paths for this problem
        code_c_path = os.path.join(dir_path, 'code.c')
        test_c_path = os.path.join(dir_path, 'test.c')
        original_bin_path = os.path.join(ORIGINAL_BIN_DIR, f"{problem_name}_test")
        ll_file_path = os.path.join(RAISED_FULL_IR_DIR, f"{problem_name}.ll")
        raised_bin_path = os.path.join(RAISED_FULL_BIN_DIR, f"{problem_name}_raised_test")

        if not (os.path.exists(code_c_path) and os.path.exists(test_c_path)):
            print(f"  - WARNING: Missing 'code.c' or 'test.c' in '{dir_path}'. Skipping.")
            continue

        try:
            # Step 1: Compile code.c and test.c into a single original executable
            print(f"  [1/4] Creating original executable...")
            link_args = [CLANG_COMMAND] + CFLAGS + [code_c_path, test_c_path, "-o", original_bin_path]
            subprocess.run(link_args, check=True, capture_output=True)

            # Step 2: Raise the ENTIRE executable to LLVM IR
            print(f"  [2/4] Raising '{original_bin_path}' to LLVM IR...")
            mctoll_args = [MCTOLL_COMMAND, "-d", original_bin_path]
            with open(ll_file_path, 'w') as f_stderr:
                subprocess.run(mctoll_args, check=True, stderr=f_stderr)

            # Step 3: Re-compile the raised LLVM IR directly into a new executable
            print(f"  [3/4] Re-compiling '{ll_file_path}' to a new executable...")
            recompile_args = [CLANG_COMMAND, ll_file_path, "-o", raised_bin_path]
            subprocess.run(recompile_args, check=True, capture_output=True)

            # Step 4: Run the final, fully-raised test executable
            print(f"  [4/4] Running the fully-raised test executable...")
            run_result = subprocess.run([raised_bin_path], check=True, capture_output=True, text=True)

            print(f"  SUCCESS! Test output for {problem_name}:")
            print(f"  ---------------------------------")
            print(f"{run_result.stdout.strip()}")
            print(f"  ---------------------------------")

        except FileNotFoundError as e:
            print(f"  - ERROR: Command not found: {e.filename}. Is it in your PATH?")
            break
        except subprocess.CalledProcessError as e:
            print(f"  - ERROR: A step failed with return code {e.returncode}.")
            if e.stderr:
                print(f"  - Error Output:\n{e.stderr.strip()}")
            # Use 'continue' to move to the next problem even if one fails
            continue
        except Exception as e:
            print(f"  - An unexpected error occurred: {e}")
            continue

if __name__ == "__main__":
    main()
