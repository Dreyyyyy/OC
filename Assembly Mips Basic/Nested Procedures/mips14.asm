.data
	newLine: .asciiz "\n" #Declaration of a line for print in code;

.text
	main: #Main procedure;
		addi $s0, $zero, 50 #$s0 = 0 + 50;
		jal increaseRegister #Jump to the procedure;
		
		#Print a new line;
		li $v0, 4 
		la $a0, newLine
		syscall
		
		#Print a old number;
		jal printValue
		
		#Finish the program;
		li $v0, 10
		syscall
		
	increaseRegister: #Procedure;
		addi $sp, $sp, -8 #Stack 8 bytes of memory;
		sw $s0, 0($sp) #Save the old value of "$s0" register in one position of "$sp" register;
		sw $ra, 4($sp) #Save the adress of the procedure in one position of "$sp" register;
		addi $s0, $s0, 50 #$s0 = 50 + 50;
		jal printValue #Print a number;
		lw $s0, 0($sp) #Return the old value to "$s0" register;
		lw $ra, 4($sp) #Return the adress to "$ra" register;
		addi $sp, $sp, 8 #Return the stack memory to the "$sp" register;
		jr $ra #Jump back to main procedure.
	
	printValue:
		li $v0, 1
		move $a0, $s0
		syscall	
		jr $ra