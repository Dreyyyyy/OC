.data
	prompt: .asciiz "Type your age: "
	message: .asciiz "Your age is: "

.text
	#Print on screen the first message;
	li $v0, 4
	la $a0, prompt
	syscall
	
	#Get input data;
	li $v0, 5
	syscall
	
	#Move the data from a temporary register;
	move $t0, $v0
	
	#Print on screen the second message;
	li $v0, 4
	la $a0, message
	syscall
	
	#Print the data.
	li $v0, 1
	move $a0, $t0
	syscall