#!/usr/bin/env python3
import os
import subprocess
import glob

# --- CONFIGURATION ---
# Path to your LLVM build directory's bin folder to ensure toolchain consistency
LLVM_BIN_DIR = "/home/jad.barmada/llvm-project/build/bin"

# Directories relative to where this script is run
EVAL_DIR = "eval"
OUTPUT_DIR = "original_dynamic_binaries"

# Compiler and flags for creating standard dynamic executables
COMPILER = os.path.join(LLVM_BIN_DIR, "clang")
CFLAGS = ['-g', '-O0'] # Using the same flags as the raised code for a fair comparison
# --------------------

def main():
    """
    Finds and compiles all original 'code.c' and 'test.c' files
    to create the baseline executables for benchmarking.
    """
    print(f"--- Compiling Original Source Code for Benchmarking ---")
    
    # Get the absolute path to the directory where the script is being run
    script_base_dir = os.path.abspath(os.path.dirname(__file__))
    
    # Create the output directory if it doesn't exist
    output_path = os.path.join(script_base_dir, OUTPUT_DIR)
    os.makedirs(output_path, exist_ok=True)
    print(f"Compiled binaries will be stored in: {output_path}")

    # Find all directories starting with 'problem' inside the EVAL_DIR
    search_path = os.path.join(script_base_dir, EVAL_DIR, 'problem*')
    problem_dirs = sorted(glob.glob(search_path))
    
    if not problem_dirs:
        print(f"ERROR: No 'problem*' directories found in '{EVAL_DIR}/'. Please check the path.")
        return

    print(f"Found {len(problem_dirs)} problem directories to process.")
    success_count = 0

    # Loop through each problem directory
    for dir_path in problem_dirs:
        if not os.path.isdir(dir_path):
            continue

        problem_name = os.path.basename(dir_path)
        
        # Define paths to the source and output files
        source_code_path = os.path.join(dir_path, 'code.c')
        source_test_path = os.path.join(dir_path, 'test.c')
        output_executable_path = os.path.join(output_path, f"{problem_name}_test")

        # Check if both C files exist before trying to compile
        if not (os.path.exists(source_code_path) and os.path.exists(source_test_path)):
            print(f"  - WARNING: Skipping '{problem_name}', missing 'code.c' or 'test.c'.")
            continue

        # Construct the full compilation command
        compile_cmd = [COMPILER] + CFLAGS + [source_code_path, source_test_path, '-o', output_executable_path, '-lm']
        
        print(f"  - Compiling {problem_name}...")
        
        # Execute the command
        try:
            subprocess.run(
                compile_cmd,
                check=True,       # Stop if the command fails
                capture_output=True, # Capture stdout/stderr
                text=True
            )
            success_count += 1
        except subprocess.CalledProcessError as e:
            print(f"    - ERROR: Compilation failed for '{problem_name}'.")
            # Print the compiler's error message
            if e.stderr:
                print(f"    - Compiler Error:\n{e.stderr.strip()}")
            continue # Continue to the next file even if one fails
    
    print(f"\n--- Original Code Compilation Complete ---")
    print(f"Successfully compiled {success_count} / {len(problem_dirs)} problems.")

if __name__ == "__main__":
    main()
