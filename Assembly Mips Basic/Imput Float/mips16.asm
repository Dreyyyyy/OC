.data
	zeroAsFloat: .float 0.0
	prompt: .asciiz "Type a Pi value: "
	message: .asciiz "The Pi value is: "

.text
	ldc1 $f4, zeroAsFloat
	
	li $v0, 4
	la $a0, prompt
	syscall
	
	li $v0, 6
	syscall
	
	li $v0, 4
	la $a0, message
	syscall
	
	li $v0, 2
	add.s $f12, $f4, $f0
	syscall