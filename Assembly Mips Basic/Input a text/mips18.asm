.data
	message: .asciiz "Hello, "
	userInput: .space 20

.text
	main:
		#Read the user's input
		li $v0, 8
		la $a0, userInput
		li $a1, 20
		syscall
	
		#Print on screen a message
		li $v0, 4
		la $a0, message
		syscall
	
		#Print on screen a input
		li $v0, 4
		la $a0, userInput
		syscall
		
		#End of the procedure
		li $v0, 10
		syscall
	
	