.data #Definition of randomic access memory variables;
	number1: .word 21 #Definition of a variable, with a type and data;
	number2: .word 12 #Definition of a variable, with a type and data;

.text #Code area;
	lw $t0, number1 #Storage a word in a temporary variable;
	lw $t1, number2 #Storage a word in a temporary variable;
	sub $t2, $t0, $t1 #$t2 = $t0 - $t1;
	li $v0, 1 #Load the option to print a integer on screen;
	move $a0, $t2 #Move the value of the "$t2" register to "$a0" register;
	syscall #Call the system to execute the program.