import os
import subprocess
 
LLVM_BIN_DIR = "/home/jad.barmada/llvm-project/build/bin"
script_base_dir = os.getcwd()
EVAL_DIR = "eval"
RESULTS_DIR = "mctoll_results"
prototypes_path = os.path.join(script_base_dir, "prototypes.h")
 
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
 
    success_count = 0
    failure_list = []
 
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
            print(f"    - Searched for 'code.c' at: {source_code_path}")
            print(f"    - Searched for 'test.c' at: {source_test_path}")
            continue
 
        try:
            # Step 1: Compile code.c to a shared library
            print(f"  [1/4] Compiling to shared library...")
            compile_cmd = [ os.path.join(LLVM_BIN_DIR, "clang"), '-g', '-O0', '-shared', '-fPIC', '-o', so_filename, source_code_path ]
            subprocess.run(compile_cmd, check=True, cwd=output_dir, capture_output=True)
 
            # Step 2: Raise the shared library with McToll
            print(f"  [2/4] Raising with McToll...")
            relative_proto_path = os.path.relpath(prototypes_path, start=output_dir)
            mctoll_cmd = [ os.path.join(LLVM_BIN_DIR, "llvm-mctoll"), '-d', '-I', relative_proto_path, so_filename ]
            subprocess.run(mctoll_cmd, check=True, cwd=output_dir, capture_output=True)
 
            mctoll_ll_path = os.path.join(output_dir, mctoll_output_filename)
            if not os.path.exists(mctoll_ll_path):
                print(f"  - ERROR: McToll did not create the expected output file: {mctoll_output_filename}")
                failure_list.append(i)
                continue
 
            # Step 3: Link raised code with the test harness
            print(f"  [3/4] Linking raised code...")
            relative_test_path = os.path.relpath(source_test_path, start=output_dir)
            link_cmd = [ os.path.join(LLVM_BIN_DIR, "clang"), '-g', '-O0', mctoll_output_filename, relative_test_path, '-o', raised_test_filename, '-lm']
            subprocess.run(link_cmd, check=True, cwd=output_dir, capture_output=True)
 
            # Step 4: Run the final test
            print(f"  [4/4] Running final test...")
            test_cmd = [f"./{raised_test_filename}"]
            run_result = subprocess.run(test_cmd, check=True, cwd=output_dir, capture_output=True, text=True)
            print(f"  SUCCESS for {problem_name}!")
            if run_result.stdout:
                print(f"    Output: {run_result.stdout.strip()}")
            success_count += 1
 
        except subprocess.CalledProcessError as e:
            print(f"  - ERROR: A step failed for {problem_name} with return code {e.returncode}.")
            if isinstance(e.stderr, bytes):
                print(f"    - Error Output:\n{e.stderr.decode().strip()}")
            else:
                print(f"    - Error Output:\n{e.stderr.strip()}")
            try:
                # Attempt to extract the failing line from the test file
                with open(source_test_path, 'r') as f:
                    for line in f:
                        if 'assert' in line:
                            print(f"    - Possibly failed assert: {line.strip()}")
                            break
            except Exception as inner_e:
                print(f"    - Could not parse test file: {inner_e}")
            failure_list.append(i)
            continue
 
        except Exception as e:
            print(f"  - An unexpected error occurred for {problem_name}: {e}")
            failure_list.append(i)
            continue
 
    print("\nAutomation complete.")
    print(f"\nSummary: {success_count} / {END_PROBLEM_NUMBER - START_PROBLEM_NUMBER + 1} passed.")
    if failure_list:
        print("Failures:", ", ".join([f"problem{n}" for n in failure_list]))
 
if __name__ == "__main__":
    main()
