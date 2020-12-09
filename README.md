# RISC-V CPU 

Implemented in logism. The version used can be found here: https://github.com/cs3410/logisim-evolution.

The processor is pipelined and supports the following instructions:

Arithmetics: ADD, ADDI, SUB, AUIPC

Logic: AND, ANDI, OR, ORI, XOR, XORI, SLT, SLTI, SLTU, SLTIU

Shifts: SRA, SRAI, SRL, SRLI, SLL, SLLI

Load Immediate: LUI

Jumps: JAL, JALR

Branches: BEQ, BNE, BLT, BGE, BLTU, BGEU

Memory Load/Store (little endian): SW, SB, LW, LB
