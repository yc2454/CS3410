ADDI sp, sp, -28 # allocation
SW ra, sp, 16 # save Return Addr
SW fp, sp, 12 # save Frame pointer
SW s2, sp, 8 # Callee-save
SW s1, sp, 4 # Callee-save
ADDI fp, sp, 24 # compute new frame pointer


# save args to callee-saved
MOVE s1, a0
MOVE s2, a1
# computation and save to local (t0 & t1, t0 = tmp)
AND t0, a0, a1
OR t1, a0, a1
ADD t0, t0, t1
# prepare calling sum: args passing
MOVE a0, t0
LI a1, 1
LI a2, 2
…
LI a7, 7
LI t1, 8
# caller save
SW t1, -4(sp)
SW t0, 0(sp)
# function call
JAL sum
# caller-saved restore (tmp)
LW t0, 0(sp)
# prepare calling sum: args passing
MOVE a0, a0 # s
MOVE a1, t0 # tmp
MOVE a2, s2 # b
MOVE a3, s1 # a
MOVE a4, s2 # b
MOVE a5, s1 # a
# function call
JAL sum
# add u (a0) and a (s1)
ADD a0, a0, s1
ADD a0, a0, s2
# a0 = u + a + b


# Epilogue
LW s1, sp, 4 # restore old s1
LW s2, sp, 8 # restore old s2
LW fp, sp, 12 # restore
LW ra, sp, 16 # restore
ADDI sp, sp, 28 # stack back
JR ra # jump back