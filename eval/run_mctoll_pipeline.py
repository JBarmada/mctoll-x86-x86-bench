import os
import subprocess
import glob

# --- Configuration ---
BASE_DIR = "."
# NEW: The source directory is now where the shared libraries are
SOURCE_LIBS_DIR = "shared_libs"
RAISED_IR_DIR = "raised_ir"
RAISED_O_DIR = "raised_objects"
FINAL_BIN_DIR = "final_binaries"

MCTOLL_COMMAND = "/home/ismail.elsissi/jad/llvm-project/build/bin/llvm-mctoll"
CLANG_COMMAND = "clang"

# --- Script Logic ---

def main():
    print("Starting full McToll raising and testing pipeline...")
    for dirname in [RAISED_IR_DIR, RAISED_O_DIR, FINAL_BIN_DIR]:
        os.makedirs(os.path.join(BASE_DIR, dirname), exist_ok=True)

    # NEW: Find all the shared library files to process
    source_files = sorted(glob.glob(os.path.join(SOURCE_LIBS_DIR, '*.so')))
    if not source_files:
        print(f"ERROR: No .so files found in '{SOURCE_LIBS_DIR}/'. Did you run the compilation script first?")
        return
    print(f"Found {len(source_files)} shared libraries to process.")

    for so_path in source_files:
        problem_name = os.path.splitext(os.path.basename(so_path))[0]
        print(f"\n--- Processing: {problem_name} ---")

        test_c_path = os.path.join(BASE_DIR, problem_name, 'test.c')
        ll_file_path = os.path.join(RAISED_IR_DIR, f"{problem_name}.ll")
        raised_o_path = os.path.join(RAISED_O_DIR, f"{problem_name}.o")
        final_bin_path = os.path.join(FINAL_BIN_DIR, f"{problem_name}_test")

        if not os.path.exists(test_c_path):
            print(f"  - WARNING: Test file '{test_c_path}' not found. Skipping.")
            continue

        try:
            # Step 1: Raise the SHARED LIBRARY (.so) to LLVM IR
            print(f"  [1/4] Raising '{so_path}' to LLVM IR...")
            mctoll_args = [MCTOLL_COMMAND, "-d", so_path]
            with open(ll_file_path, 'w') as f_stderr:
                subprocess.run(mctoll_args, check=True, stderr=f_stderr)

            # Step 2: Re-compile the LLVM IR
            print(f"  [2/4] Re-compiling '{ll_file_path}'...")
            recompile_args = [CLANG_COMMAND, "-c", ll_file_path, "-o", raised_o_path]
            subprocess.run(recompile_args, check=True, capture_output=True)

            # Step 3: Link with test.c
            print(f"  [3/4] Linking with '{test_c_path}'...")
            link_args = [CLANG_COMMAND, raised_o_path, test_c_path, "-o", final_bin_path]
            subprocess.run(link_args, check=True, capture_output=True)

            # Step 4: Run the final test executable
            print(f"  [4/4] Running final test...")
            run_result = subprocess.run([final_bin_path], check=True, capture_output=True, text=True)
            
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
            break
        except Exception as e:
            print(f"  - An unexpected error occurred: {e}")
            break

if __name__ == "__main__":
    main()
