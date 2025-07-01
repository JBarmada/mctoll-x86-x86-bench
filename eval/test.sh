# #!/bin/bash


# for problem_dir in problem*; do
#     if [ -d "$problem_dir" ]; then
#         echo "Processing $problem_dir"
        
#         cd "$problem_dir"

#         FILE="code"
#         TEST_FILE="test"

#         riscv64-linux-gnu-gcc -S ${FILE}.c -o ${FILE}.s -O0
#         riscv64-linux-gnu-gcc ${FILE}.s -o ${FILE}.o
#         riscv64-linux-gnu-gcc -c ${TEST_FILE}.c -o ${TEST_FILE}.o
#         riscv64-linux-gnu-gcc ${FILE}.o ${TEST_FILE}.o -o ${FILE}

#         # arm-linux-gnueabi-gcc -S ${FILE}.c -o ${FILE}.s
#         # arm-linux-gnueabi-as ${FILE}.s -o ${FILE}.o
#         # arm-linux-gnueabi-gcc -c ${TEST_FILE}.c -o ${TEST_FILE}.o
#         # arm-linux-gnueabi-gcc ${FILE}.o ${TEST_FILE}.o -o ${FILE}

#         echo "Executing ${FILE} in ${problem_dir}"
#         qemu-riscv64 -L /usr/riscv64-linux-gnu ${FILE}

#         cd ..

#         echo "Finished processing $problem_dir"
#         echo "------------------------"
#     fi
# done

#!/bin/bash

for problem_dir in problem*; do
    if [ -d "$problem_dir" ]; then
        echo "Processing $problem_dir"
        
        cd "$problem_dir"

        FILE="code"
        TEST_FILE="test"

        # Compile the main code to assembly
        riscv64-linux-gnu-gcc -S ${FILE}.c -o ${FILE}.s -O0
        
        # Assemble the code file into an object
        riscv64-linux-gnu-gcc -c ${FILE}.s -o ${FILE}.o
        
        # Compile the test file to an object file
        riscv64-linux-gnu-gcc -c ${TEST_FILE}.c -o ${TEST_FILE}.o
        
        # Link both object files into a final executable, including main from the test file
        riscv64-linux-gnu-gcc ${FILE}.o ${TEST_FILE}.o -o ${FILE}

        echo "Executing ${FILE} in ${problem_dir}"
        
        # Run the executable in QEMU
        qemu-riscv64 -L /usr/riscv64-linux-gnu ${FILE}

        cd ..

        echo "Finished processing $problem_dir"
        echo "------------------------"
    fi
done
