import os, subprocess, glob

# --- Configuration ---
BASE_DIR = "."
OUTPUT_DIR = "shared_libs"
# THE FIX IS HERE: Using the full path to your version 15 clang
COMPILER = "/home/ismail.elsissi/jad/llvm-project/build/bin/clang"
CFLAGS = ['-g', '-O0', '-shared', '-fPIC']

# --- Script Logic ---
def main():
    print("--- Compiling all 'code.c' files into shared libraries (.so) ---")
    os.makedirs(OUTPUT_DIR, exist_ok=True)
    problem_dirs = sorted(glob.glob(os.path.join(BASE_DIR, 'problem*')))
    print(f"Found {len(problem_dirs)} problem directories.")
    for dir_path in filter(os.path.isdir, problem_dirs):
        problem_name = os.path.basename(dir_path)
        source_file = os.path.join(dir_path, 'code.c')
        output_file = os.path.join(OUTPUT_DIR, f'{problem_name}.so')
        if not os.path.exists(source_file): continue
        command = [COMPILER] + CFLAGS + [source_file, '-o', output_file]
        print(f"  - Compiling '{source_file}'...")
        try:
            subprocess.run(command, check=True, capture_output=True, text=True)
        except subprocess.CalledProcessError as e:
            print(f"    - ERROR: Compilation failed:\n{e.stderr}")
    print("\nShared library compilation complete!")

if __name__ == "__main__":
    main()
