.data #Definition of variables in randomic memory access
	number1: .word 15 #Declaration of a variable, with a type and a data
	number2: .word 27 #Declaration of a variable, with a type and a data

.text #Code area
	lw $t0, number1 #Load a value to a register
	lw $t1, number2 #Load a value to a register
	add $t2, $t0, $t1 #t2 = t0 + t1
	li $v0, 1 #Load the option to print a integer on screen
	add $a0, $zero, $t2 #Transfer the value storage in "$t2" register to the "$a0" register 
	syscall #Call the system to execute the code