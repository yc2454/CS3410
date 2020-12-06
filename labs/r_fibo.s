addi sp, x0, 1000
addi fp, x0, 1000
addi a0, x0, 4 //change n to an integer argument
jal ra, r_fibonacci
jal x0, exit

r_fibonacci:
# Prologue
ADDI sp, sp, -24 # allocation
SW ra, 16(sp) # save Return Addr
SW fp, 12(sp) # save Frame pointer
SW s1, 8(sp) # Callee-save
ADDI fp, sp, 20 # compute new frame pointer

# Body
ADDI t0, x0, 1 # save 1 to t0
ADD t1, x0, a0 # save n to t1
BEQ a0, x0, if # branch to if IF n=0
BEQ a0, t0, elif # branch to elif IF n=1

SUB a0, a0, t0 # pass (n-1) to argument
SW t0, 0(sp) # caller save
SW t1, 4(sp) # caller save
JAL ra, r_fibonacci
LW t0, 0(sp) # restore caller-save
LW t1, 4(sp)

ADDI t0, a0, 0 # save r_fibo(n-1) to t0

ADDI s1, x0, 2
SUB a0, t1, s1 # pass (n-2) to argument
SW t0, 0(sp) # caller save
SW t1, 4(sp) # caller save
JAL ra, r_fibonacci
LW t0, 0(sp) # restore caller-save
LW t1, 4(sp)

ADD a0, t0, a0 

if:
ADDI a0, x0, 0 
JAL x0, epilogue

elif:
ADDI a0, x0, 1 

# epilogue
epilogue:
LW s1, 8(sp) # restore old s1
LW fp, 12(sp) # restore
LW ra, 16(sp) # restore
ADDI sp, sp, 24 # stack back
JALR x0, ra, 0 # jump back

exit: