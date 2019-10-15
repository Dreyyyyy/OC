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
		li $v0, 1
		move $a0, $s0
		syscall
		
		#Finish the program;
		li $v0, 10
		syscall
		
	increaseRegister: #Procedure;
		addi $sp, $sp, -4 #Stack 4 bytes of memory;
		sw $s0, 0($sp) #Save the old value of "$s0" register in one position of "$sp" register;
		addi $s0, $s0, 50 #$s0 = 50 + 50;
		li $v0, 1 #Load the option to print a integer on screen;
		move $a0, $s0 #Move the value of "$s0" register to "$a0" register;
		syscall	#Call the system to execute it;
		lw $s0, 0($sp) #Return the old value to "$s0" register;
		addi $sp, $sp, 4 #Return the stack memory to the "$sp" register;
		jr $ra #Jump back to main procedure.