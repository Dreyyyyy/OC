.text #Code area;
	main: #Main procedure;
		addi $a0, $zero, 18 #$a0 = 0 + 18;
		addi $a1, $zero, 7 #$a1 = 0 + 7;
		jal addNumbers #Jump to the function;
		li $v0, 1 #Load the option to print a integer on screen;
		move $a2, $v1 #Move the value of "$v1" register to the "$a2" register;
		syscall #Call the system to execute it;
		li $v0, 10 #Load the option to finish the program;
		syscall #Call the system again, to execute it;
	
	addNumbers: #Addition procedure;
		add $v1, $a0, $a1 # $v1 = $a0 + $a1;
		jr $ra #Jump back to the main.