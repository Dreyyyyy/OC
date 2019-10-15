.data #Declaration of random memory access variables
	message: .asciiz "Test test wow wow aaaaaaaa.\n" #Declaration of a variable, with type and data

.text #Code area
	main: #Main procedure
		jal displayMessage #Jump to the procedure, and execute them
		li $v0, 10 #Load the option to finish the program
		syscall #Call the system to execute the code
	
	displayMessage: #Procedure for display a message on screen
		li $v0, 4 #Load the option to print a phrase on screen
		la $a0, message #Storage the message in "$a0" register
		syscall #Call the system to execute the code
		jr $ra	#Jump back to the main function