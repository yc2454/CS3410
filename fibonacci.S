lui t0, 0
lui t1, 1
#srli t1, t1, 12

add t2, t1, t0 # t2 = t1 +t0

addi t0, t1, 0 # t0 = t1 + 0
addi t1, t2, 0 # t1 = t2 + 0
add t2, t1, t0 # t2 = t1 +t0

addi t0, t1, 0 # t0 = t1 + 0
addi t1, t2, 0 # t1 = t2 + 0
add t2, t1, t0 # t2 = t1 +t0

addi t0, t1, 0 # t0 = t1 + 0
addi t1, t2, 0 # t1 = t2 + 0
add t2, t1, t0 # t2 = t1 +t0

addi a0, t2, 0