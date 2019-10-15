.text #Code area;
	addi $t0, $zero, 5 #$t0 = 0 + 5;
	sll $t1, $t0, 2 # Multiply the value in "$t0" register for 4;
	li $v0, 1 #Load the option to print a integer on screen;
	move $a0, $t1 #Move the value of the "$t1" register to the "$a0" register;
	syscall #Call the system to execute the code.