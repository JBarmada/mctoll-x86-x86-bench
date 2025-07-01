llvm-mctoll: /home/ismail.elsissi/jad/llvm-project/llvm/tools/llvm-mctoll/Raiser/MCInstRaiser.cpp:347: uint64_t llvm::mctoll::MCInstRaiser::getMCInstIndex(const llvm::MachineInstr&) const: Assertion `MO.isMetadata() && "Unexpected non-metadata operand in branch instruction"' failed.

*** Please submit an issue at https://github.com/microsoft/llvm-mctoll
*** along with a back trace and a reproducer, if possible.
Stack dump:
0.	Program arguments: /home/ismail.elsissi/jad/llvm-project/build/bin/llvm-mctoll -d -I ./function_prototypes.h original_binaries/problem1_test
Stack dump without symbol names (ensure you have llvm-symbolizer in your PATH or set the environment var `LLVM_SYMBOLIZER_PATH` to point to it):
/home/ismail.elsissi/jad/llvm-project/build/bin/llvm-mctoll(+0xf59aa5)[0x557864644aa5]
/home/ismail.elsissi/jad/llvm-project/build/bin/llvm-mctoll(+0xf5754e)[0x55786464254e]
/lib/x86_64-linux-gnu/libc.so.6(+0x42520)[0x154c3c293520]
/lib/x86_64-linux-gnu/libc.so.6(pthread_kill+0x12c)[0x154c3c2e79fc]
/lib/x86_64-linux-gnu/libc.so.6(raise+0x16)[0x154c3c293476]
/lib/x86_64-linux-gnu/libc.so.6(abort+0xd3)[0x154c3c2797f3]
/lib/x86_64-linux-gnu/libc.so.6(+0x2871b)[0x154c3c27971b]
/lib/x86_64-linux-gnu/libc.so.6(+0x39e96)[0x154c3c28ae96]
/home/ismail.elsissi/jad/llvm-project/build/bin/llvm-mctoll(+0x15860ce)[0x557864c710ce]
/home/ismail.elsissi/jad/llvm-project/build/bin/llvm-mctoll(+0x15b2eef)[0x557864c9deef]
/home/ismail.elsissi/jad/llvm-project/build/bin/llvm-mctoll(+0x15bf840)[0x557864caa840]
/home/ismail.elsissi/jad/llvm-project/build/bin/llvm-mctoll(+0x158906d)[0x557864c7406d]
/home/ismail.elsissi/jad/llvm-project/build/bin/llvm-mctoll(+0x7068ad)[0x557863df18ad]
/home/ismail.elsissi/jad/llvm-project/build/bin/llvm-mctoll(+0x6b09a4)[0x557863d9b9a4]
/lib/x86_64-linux-gnu/libc.so.6(+0x29d90)[0x154c3c27ad90]
/lib/x86_64-linux-gnu/libc.so.6(__libc_start_main+0x80)[0x154c3c27ae40]
/home/ismail.elsissi/jad/llvm-project/build/bin/llvm-mctoll(+0x6f44d5)[0x557863ddf4d5]
