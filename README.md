# RISC-V CPU 

Implemented in logism. The version used can be found here: https://github.com/cs3410/logisim-evolution.

The processor is pipelined and supports the following instructions:
Arithmetics | Logic | Shifts | Load Immediate | Jumps | Branches | Memory Load/Store (little endian)
------------ | ------------- | ------------- | ------------- | ------------- | -------------
ADD, ADDI, SUB, AUIPC | AND, ANDI, OR, ORI, XOR, XORI, SLT, SLTI, SLTU, SLTIU | SRA, SRAI, SRL, SRLI, SLL, SLLI | LUI | JAL, JALR | BEQ, BNE, BLT, BGE, BLTU, BGEU | SW, SB, LW, LB
