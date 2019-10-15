.text #Code area;
	addi $t0, $zero, 2000 #Add in $t0 = $zero(value) + 2000;
	addi $t1, $zero, 10 #Add in $t0 = $zero(value) + 10;
	mult $t0, $t1 #Multiply $t0 value for $t1;
	mflo $s0 #Move the value of the "lo" register to the "$s0" register;
	li $v0, 1 #Load the option to print a integer on screen;
	move $a0, $s0 #Move the value storage in "$s0" register to the "$a0" register;
	syscall #Call the system for the execute the code.