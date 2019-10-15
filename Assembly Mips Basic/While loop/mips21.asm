.data
	message: .asciiz "After the while loop is finish.\n"
	comma: .asciiz ", "
	
.text

	main:
	addi $t0, $zero, 0 #i = 0
	while:
		bgt $t0, 10, exit #If the value of "$t0" is greater than 10, exit of the loop
		jal printCount
		addi $t0, $t0, 1 #i++;
		j while #Jump back for the start of while
	exit:
	#Print the end of loop
	li $v0, 4
	la $a0, message
	syscall
	#End of the program
	li $v0, 10
	syscall
	
	#Procedure to print the count numbers of loop
	printCount:
		li $v0, 1
		addi $a0, $t0, 0
		syscall
		li $v0, 4
		la $a0, comma
		syscall
		jr $ra