.data
	prompt: .asciiz "Type a double precision number: "
	message: .asciiz "The number is: "

.text
	#Print on screen a message
	li $v0, 4
	la $a0, prompt
	syscall
	
	#Read the user's input
	li $v0, 7
	syscall
	
	#Print on screen a message
	li $v0, 4
	la $a0, message
	syscall
	
	#Print on screen the user's value
	li $v0, 3
	add.d $f12, $f0, $f10
	syscall