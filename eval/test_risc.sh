
for problem_dir in problem*; do
    if [ -d "$problem_dir" ]; then
        echo "Processing $problem_dir"
        
        cd "$problem_dir"

        FILE="code"
        TEST_FILE="test"

        # Compile the main code to assembly
        riscv64-unknown-elf-gcc -S ${FILE}.c -o ${FILE}.s -O0
        
        # Assemble the code file into an object
        riscv64-unknown-elf-gcc -c ${FILE}.s -o ${FILE}.o
        
        # Compile the test file to an object file
        riscv64-unknown-elf-gcc -c ${TEST_FILE}.c -o ${TEST_FILE}.o
        
        # Link both object files into a final executable, including main from the test file
        riscv64-unknown-elf-gcc ${FILE}.o ${TEST_FILE}.o -o ${FILE}

        echo "Executing ${FILE} in ${problem_dir}"
        
        # Run the executable in QEMU
        qemu-system-riscv64  ${FILE}

        cd ..

        echo "Finished processing $problem_dir"
        echo "------------------------"
    fi
done
