import os
import subprocess

# --- CONFIGURATION ---
# Options are typically '-O0', '-O1', '-O2', or '-O3'
OPTIMIZATION_LEVEL_STEP1 = '-O0'
OPTIMIZATION_LEVEL_STEP3 = '-O2'

LLVM_BIN_DIR = "/home/jad.barmada/llvm-project/build/bin"
script_base_dir = os.getcwd()
EVAL_DIR = "eval"
opt1_str = OPTIMIZATION_LEVEL_STEP1.replace('-', '')
opt3_str = OPTIMIZATION_LEVEL_STEP3.replace('-', '')
RESULTS_DIR = f"mctoll_results_{opt1_str}-{opt3_str}"

prototypes_path = os.path.join(script_base_dir, "prototypes.h")

# --------------------

def main():
    print("Generating comprehensive prototypes.h file...")
    prototypes_content = (
        "#include <stdio.h>\n"
        "#include <stdlib.h>\n"
        "#include <stdbool.h>\n"
        "#include <math.h>\n"
        "#include <limits.h>\n"
        "#include <assert.h>\n"
        "#include <string.h>\n"
        "#include <float.h>\n"
        "#include <ctype.h>\n"
    )
    with open(prototypes_path, 'w') as f:
        f.write(prototypes_content)
    print("prototypes.h created successfully.")

    # Prompt user for problem range
    START_PROBLEM_NUMBER = int(input("Enter start problem number: "))
    END_PROBLEM_NUMBER = int(input("Enter end problem number: "))
    
    # Initialize counters and specific failure lists ---
    success_count = 0
    semantic_failure_list = [] # For tests that link but fail assert
    pipeline_failure_list = [] # For any other crash/error


    print(f"\n--- Running pipeline with optimization level: {opt1_str} - {opt3_str} ---")

    for i in range(START_PROBLEM_NUMBER, END_PROBLEM_NUMBER + 1):
        problem_name = f"problem{i}"
        print(f"\n--- Processing: {problem_name} ---")

        output_dir = os.path.join(RESULTS_DIR, problem_name)
        source_code_path = os.path.join(script_base_dir, EVAL_DIR, problem_name, 'code.c')
        source_test_path = os.path.join(script_base_dir, EVAL_DIR, problem_name, 'test.c')

        os.makedirs(output_dir, exist_ok=True)

        so_filename = "code.so"
        mctoll_output_filename = so_filename.replace(".so", "") + "-dis.ll"
        raised_test_filename = f"{problem_name}_raised_test"

        if not (os.path.exists(source_code_path) and os.path.exists(source_test_path)):
            print(f"  - WARNING: Source files not found for {problem_name}. Skipping.")
            continue

        try:
            # Step 1: Compile
            print(f"  [1/4] Compiling to shared library...")
            compile_cmd = [ os.path.join(LLVM_BIN_DIR, "clang"), '-g', OPTIMIZATION_LEVEL_STEP1, '-shared', '-fPIC', '-o', so_filename, source_code_path ]
            subprocess.run(compile_cmd, check=True, cwd=output_dir, capture_output=True)

            # Step 2: Raise
            print(f"  [2/4] Raising with McToll...")
            relative_proto_path = os.path.relpath(prototypes_path, start=output_dir)
            mctoll_cmd = [ os.path.join(LLVM_BIN_DIR, "llvm-mctoll"), '-d', '-I', relative_proto_path, so_filename ]
            subprocess.run(mctoll_cmd, check=True, cwd=output_dir, capture_output=True, timeout=30)

            mctoll_ll_path = os.path.join(output_dir, mctoll_output_filename)
            if not os.path.exists(mctoll_ll_path):
                print(f"  - ERROR: McToll did not create the expected output file: {mctoll_output_filename}")
                pipeline_failure_list.append(i); continue

            # Step 3: Link
            print(f"  [3/4] Linking raised code...")
            relative_test_path = os.path.relpath(source_test_path, start=output_dir)
            link_cmd = [ os.path.join(LLVM_BIN_DIR, "clang"), '-g', OPTIMIZATION_LEVEL_STEP3, mctoll_output_filename, relative_test_path, '-o', raised_test_filename, '-lm']
            subprocess.run(link_cmd, check=True, cwd=output_dir, capture_output=True)

            # Step 4: Test
            print(f"  [4/4] Running final test...")
            test_cmd = [f"./{raised_test_filename}"]
            run_result = subprocess.run(test_cmd, check=True, cwd=output_dir, capture_output=True, text=True)
            print(f"  SUCCESS for {problem_name}!")
            if run_result.stdout:
                print(f"    Output: {run_result.stdout.strip()}")
            success_count += 1

        except subprocess.CalledProcessError as e:
            # --- NEW: Categorize the failure and append to the correct list ---
            failed_command_str = ' '.join(e.cmd)
            is_semantic_failure = f"./{raised_test_filename}" in failed_command_str

            if is_semantic_failure:
                print(f"  - SEMANTIC FAILURE: The raised code linked but failed the test for {problem_name}.")
                semantic_failure_list.append(i)
            else:
                print(f"  - PIPELINE ERROR: A step failed for {problem_name} with return code {e.returncode}.")
                pipeline_failure_list.append(i)
            
            error_output = e.stderr.decode().strip() if isinstance(e.stderr, bytes) else str(e.stderr).strip()
            if error_output:
                print(f"    - Error Output:\n{error_output}")
            continue
            # --- END OF NEW ---

        except Exception as e:
            print(f"  - An unexpected error occurred for {problem_name}: {e}")
            pipeline_failure_list.append(i)
            continue

    total_run = END_PROBLEM_NUMBER - START_PROBLEM_NUMBER + 1
    total_failures = len(semantic_failure_list) + len(pipeline_failure_list)
    print("\nAutomation complete.")
    # More detailed summary with specific lists AND counts ---
    print(f"\n--- Final Summary ---")
    print(f"Total problems processed: {total_run}")
    print(f"  - ✅ Successes: {success_count}")
    print(f"  - ❌ Total Failures: {total_failures}")
    
    # Add the counts for each category
    print(f"    - Semantic Failures (linked but failed test): {len(semantic_failure_list)}")
    if semantic_failure_list:
        print("      " + ", ".join([f"problem{n}" for n in semantic_failure_list]))
        
    print(f"    - Pipeline Failures (did not compile, raise, or link): {len(pipeline_failure_list)}")
    if pipeline_failure_list:
        print("      " + ", ".join([f"problem{n}" for n in pipeline_failure_list]))


if __name__ == "__main__":
    main()
