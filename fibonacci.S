lui $t0, 0
lui $t1, 1
srl $t1, $t1, 16

add $t2, $t1, $t0 # $t2 = $t1 +$t0

addi $t0, $t1, 0 # $t0 = t1 + 0
addi $t1, $t2, 0 # $t1 = $t2 + 0
add $t2, $t1, $t0 # $t2 = $t1 +$t0

addi $t0, $t1, 0 # $t0 = t1 + 0
addi $t1, $t2, 0 # $t1 = $t2 + 0
add $t2, $t1, $t0 # $t2 = $t1 +$t0

addi $t0, $t1, 0 # $t0 = t1 + 0
addi $t1, $t2, 0 # $t1 = $t2 + 0
add $t2, $t1, $t0 # $t2 = $t1 +$t0