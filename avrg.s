.data

input: .asciiz "Enter number of elemaents : "
num: .asciiz "Enter number "
ave: .asciiz " Averge is : "
x: .asciiz " :"

.text
main:

li $s0, 1 #cnt

la $a0, input
li $v0, 4
syscall

li $v0, 5 #limit
syscall
move $s1, $v0


loop:

bgt $s0 $s1, end

la $a0, num
li $v0, 4
syscall

move $a0, $s0
li $v0, 1
syscall

la $a0, x
li $v0, 4
syscall

li $v0, 5
syscall

move $a0, $v0
li $v0, 1
syscall

add $t0, $t0, $v0

addi $s0, $s0, 1

j loop

end:
la $a0, ave
li $v0, 4
syscall

div $t0, $s1
mflo $a0
li $v0, 1
syscall

li $v0, 10
syscall
































