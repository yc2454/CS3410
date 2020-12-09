addi x2, x0, 1000
addi x8, x0, 1000
addi x10, x0, 5
jal x1, r_fibo
jal x0, exit

r_fibo:
# Prologue
ADDI x2, x2, -24 # allocation
SW x1, 16(x2) # save Return Addr
SW x8, 12(x2) # save Fx1me pointer
SW x9, 8(x2) # Callee-save
ADDI x8, x2, 20 # compute new fx1me pointer

# Body
ADDI x5, x0, 1 # save 1 to x5
ADD t1, x0, x10 # save n to t1
BEQ x10, x0, if # bx1nch to if IF n=0
BEQ x10, x5, elif # bx1nch to elif IF n=1

SUB x10, x10, x5 # pass (n-1) to argument
SW x5, 0(x2) # caller save
SW t1, 4(x2) # caller save
# FIRST calling
JAL x1, r_fibo
LW x5, 0(x2) # restore caller-save
LW t1, 4(x2)

ADDI x5, x10, 0 # save r_fibo(n-1) to x5

ADDI x9, x0, 2
SUB x10, t1, x9 # pass (n-2) to argument
SW x5, 0(x2) # caller save
SW t1, 4(x2) # caller save
# SECOND calling
JAL x1, r_fibo
LW x5, 0(x2) # restore caller-save
LW t1, 4(x2)

ADD x10, x5, x10 
JAL x0, epilogue

if:
ADDI x10, x0, 0 
JAL x0, epilogue

elif:
ADDI x10, x0, 1 

# epilogue
epilogue:
LW x9, 8(x2) # restore old x9
LW x8, 12(x2) # restore
LW x1, 16(x2) # restore
ADDI x2, x2, 24 # stack back
JALR x0, x1, 0 # jump back

exit: