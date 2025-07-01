import os
import subprocess

# --- Configuration ---
PROBLEM_TO_RUN = "problem1"
PROTOTYPES_HEADER = "./function_prototypes.h"

BASE_DIR = "."
ORIGINAL_BIN_DIR = "original_binaries"
RAISED_FULL_IR_DIR = "raised_full_program_ir"
RAISED_FULL_BIN_DIR = "raised_full_binaries"

MCTOLL_COMMAND = "/home/ismail.elsissi/jad/llvm-project/build/bin/llvm-mctoll"
CLANG_COMMAND = "clang"
# THE FIX IS HERE: Added '-static' to create a self-contained executable
CFLAGS = ['-g', '-O2', '-static']

# --- Script Logic ---

def main():
    print(f"--- Starting debug run for a single problem: {PROBLEM_TO_RUN} ---")

    for dirname in [ORIGINAL_BIN_DIR, RAISED_FULL_IR_DIR, RAISED_FULL_BIN_DIR]:
        os.makedirs(os.path.join(BASE_DIR, dirname), exist_ok=True)

    problem_name = PROBLEM_TO_RUN
    dir_path = os.path.join(BASE_DIR, problem_name)
    code_c_path = os.path.join(dir_path, 'code.c')
    test_c_path = os.path.join(dir_path, 'test.c')
    original_bin_path = os.path.join(ORIGINAL_BIN_DIR, f"{problem_name}_test")
    ll_file_path = os.path.join(RAISED_FULL_IR_DIR, f"{problem_name}.ll")
    raised_bin_path = os.path.join(RAISED_FULL_BIN_DIR, f"{problem_name}_raised_test")

    if not (os.path.exists(code_c_path) and os.path.exists(test_c_path)):
        print(f"  - ERROR: Missing 'code.c' or 'test.c' in '{dir_path}'. Aborting.")
        return
        
    if not os.path.exists(PROTOTYPES_HEADER):
        print(f"  - ERROR: Missing prototype file '{PROTOTYPES_HEADER}'. Please create it first.")
        return

    try:
        # Step 1: Create original STATIC executable
        print(f"\n[1/4] Creating original STATIC executable for {problem_name}...")
        link_args = [CLANG_COMMAND] + CFLAGS + [code_c_path, test_c_path, "-o", original_bin_path]
        print(f"  - Command: {' '.join(link_args)}")
        subprocess.run(link_args, check=True, capture_output=True)

        # Step 2: Raise the executable
        print(f"\n[2/4] Raising '{original_bin_path}' to LLVM IR...")
        mctoll_args = [MCTOLL_COMMAND, "-d", "-I", PROTOTYPES_HEADER, original_bin_path]
        print(f"  - Command: {' '.join(mctoll_args)} 2> {ll_file_path}")
        with open(ll_file_path, 'w') as f_stderr:
            subprocess.run(mctoll_args, check=True, stderr=f_stderr)

        # Step 3: Re-compile the raised LLVM IR
        print(f"\n[3/4] Re-compiling '{ll_file_path}' to a new executable...")
        recompile_args = [CLANG_COMMAND, ll_file_path, "-o", raised_bin_path]
        print(f"  - Command: {' '.join(recompile_args)}")
        subprocess.run(recompile_args, check=True, capture_output=True)

        # Step 4: Run the final, fully-raised test executable
        print(f"\n[4/4] Running the fully-raised test executable...")
        print(f"  - Command: ./{raised_bin_path}")
        run_result = subprocess.run([f"./{raised_bin_path}"], check=True, capture_output=True, text=True)

        print(f"\n--- SUCCESS! ---")
        print(f"Test output for {problem_name}:")
        print(f"---------------------------------")
        print(f"{run_result.stdout.strip()}")
        print(f"---------------------------------")

    except FileNotFoundError as e:
        print(f"  - FATAL ERROR: Command not found: {e.filename}.")
    except subprocess.CalledProcessError as e:
        print(f"\n--- FATAL ERROR: A step failed! ---")
        print(f"  - Step failed with return code {e.returncode}.")
        if e.stderr:
            print(f"  - Error Output:\n{e.stderr.strip()}")
    except Exception as e:
        print(f"\n--- FATAL ERROR: An unexpected error occurred! ---")
        print(e)


if __name__ == "__main__":
    main()
