lui t0, 0
lui t1, 1
lui t2, 2

add t3, t1, t0 # t2 = t1 +t0
xor t4, t1, t2
or t5, t1, t2
auipc a0, 0
sub t0, t1, t2 # t0 = t1 - t2