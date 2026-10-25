8-bit CPU - Xilinx ISE 14.7
===========================

1. Extract this folder.
2. Open bit8_CPU.xise in Xilinx ISE 14.7.
3. In Sources, switch the view to Behavioral Simulation.
4. Select tb_CPU_8bit and choose "Set as Top Module" if it is not already selected.
5. Under Processes, run "Simulate Behavioral Model".

For FPGA implementation/synthesis, CPU_8bit.vhd is set as the implementation top.
The testbench is for simulation only and should not be synthesized.

Expected final testbench result after reset and program execution:
Q = 10 (hex), PC = 1001 (binary), Z = 0.
The testbench prints "CPU TEST PASSED SUCCESSFULLY!" if its final assertion passes.

If ISE has old in-memory sources open, close the old project first, then open this extracted project's bit8_CPU.xise.
