.text #Code area
	addi $t0, $zero, 50 #$t0 = $zero(0) + 50
	addi $t1, $zero, 5 #$t1 = $zero(0) + 5
	div $s0, $t0, $t1 #$s0 = $t0 / $t1
	li $v0, 1 # Load the option to print a integer on screen
	move $a0, $s0 #Move the value storage in the "$s0" register to the "$a0" register
	syscall #Call the system to execute the program