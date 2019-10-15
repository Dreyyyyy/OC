.text #Code area;
	addi $s0, $zero, 3 #$s0 = $zero + 3;
	addi $s1, $zero, 4 #$s1 = $zero + 4;
	mul $t0, $s0, $s1 #$t0 = $s0 * $s1;
	li $v0, 1 #Load the option to print a integer on screen;
	move $a0, $t0 #Move the value of the "$t0" register to "$a0" register;
	syscall #Call the system to execute the code.