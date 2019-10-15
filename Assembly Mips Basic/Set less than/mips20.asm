.data
	message: .asciiz "The number isn't less than the other.\n"

.text
	main:
		#Numbers for comparation
		addi $t0, $zero, 18
		addi $t1, $zero, 5
		
		#Comparation
		slt $s0, $t0, $t1
		beq $s0, $zero, printMessage
		
		#End of the procedure
		li $v0, 10
		syscall
		
		#Procedure if the beq is true
		printMessage:
			li $v0, 4
			la $a0, message
			syscall
	