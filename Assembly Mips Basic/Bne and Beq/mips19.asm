.data
	message1: .asciiz "The numbers aren't equals.\n"

.text
	main:
		addi $t0, $zero, 5
		addi $t1, $zero, 13
		bne $t0, $t1, equals
		li $v0, 10
		syscall	
	
	equals:
		li $v0, 4
		la $a0, message1
		syscall		