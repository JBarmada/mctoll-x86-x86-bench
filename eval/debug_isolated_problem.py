import os
import subprocess

# --- Configuration ---
PROBLEM_TO_RUN = "problem1"
PROTOTYPES_HEADER = "./function_prototypes.h"

BASE_DIR = "."
SOURCE_LIBS_DIR = "shared_libs"
RAISED_IR_DIR = "raised_ir"
RAISED_O_DIR = "raised_objects"
FINAL_BIN_DIR = "final_binaries"

MCTOLL_COMMAND = "/home/ismail.elsissi/jad/llvm-project/build/bin/llvm-mctoll"
CLANG_COMMAND = "/home/ismail.elsissi/jad/llvm-project/build/bin/clang"

# --- Script Logic ---
def main():
    print(f"--- Starting FINAL isolated debug run for problem: {PROBLEM_TO_RUN} ---")
    for dirname in [RAISED_IR_DIR, RAISED_O_DIR, FINAL_BIN_DIR]:
        os.makedirs(os.path.join(BASE_DIR, dirname), exist_ok=True)

    problem_name = PROBLEM_TO_RUN
    so_path = os.path.join(SOURCE_LIBS_DIR, f"{problem_name}.so")
    test_c_path = os.path.join(BASE_DIR, problem_name, 'test.c')
    ll_file_path = os.path.join(RAISED_IR_DIR, f"{problem_name}.ll")
    raised_o_path = os.path.join(RAISED_O_DIR, f"{problem_name}.o")
    final_bin_path = os.path.join(FINAL_BIN_DIR, f"{problem_name}_test")

    if not (os.path.exists(so_path) and os.path.exists(test_c_path)):
        print("ERROR: Prerequisite files not found. Please run compile_c_files.py first.")
        return

    try:
        # Step 1: Raise the shared library to LLVM IR
        print(f"\n[1/5] Raising '{so_path}' to LLVM IR...")
        mctoll_args = [MCTOLL_COMMAND, "-d", "-I", PROTOTYPES_HEADER, so_path]
        with open(ll_file_path, 'w') as f_stderr:
            subprocess.run(mctoll_args, check=True, stderr=f_stderr)
        print("  - McToll finished.")

        # Step 2: **THE FIX** - Post-process the .ll file to fix function linkage
        print(f"\n[2/5] Patching linkage in '{ll_file_path}'...")
        with open(ll_file_path, 'r') as f:
            ll_content = f.read()
        
        # McToll incorrectly marks functions as 'internal'. We make them public.
        # This replaces "define internal" with just "define"
        fixed_content = ll_content.replace("define internal", "define")
        
        with open(ll_file_path, 'w') as f:
            f.write(fixed_content)
        print("  - Linkage patched successfully.")

        # Step 3: Re-compile the *patched* LLVM IR into a new object file
        print(f"\n[3/5] Re-compiling '{ll_file_path}' to an object file...")
        recompile_args = [CLANG_COMMAND, "-c", ll_file_path, "-o", raised_o_path]
        subprocess.run(recompile_args, check=True, capture_output=True)

        # Step 4: Link the new raised object file with the original test.c
        print(f"\n[4/5] Linking raised object with '{test_c_path}'...")
        link_args = [CLANG_COMMAND, raised_o_path, test_c_path, "-o", final_bin_path]
        subprocess.run(link_args, check=True, capture_output=True)

        # Step 5: Run the final test executable
        print(f"\n[5/5] Running final test...")
        run_result = subprocess.run([f"./{final_bin_path}"], check=True, capture_output=True, text=True)

        print(f"\n\n      *****************")
        print(f"      * SUCCESS!    *")
        print(f"      *****************")
        print(f"\nTest output for {problem_name}:")
        print(f"---------------------------------")
        print(f"{run_result.stdout.strip()}")
        print(f"---------------------------------")

    except subprocess.CalledProcessError as e:
        print(f"\n--- FATAL ERROR: A step failed! ---")
        print(f"  - Step failed with return code {e.returncode}.")
        if e.stderr:
            print(f"  - Error Output:\n{e.stderr.decode().strip()}")
    except Exception as e:
        print(f"\n--- FATAL ERROR: An unexpected error occurred! ---\n{e}")

if __name__ == "__main__":
    main()
