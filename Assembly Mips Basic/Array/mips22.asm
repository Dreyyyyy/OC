.data
	array: .space 12

.text
	main: 
	
		#Declaration of numbers
		addi $s0, $zero, 1
		addi $s1, $zero, 2
		addi $s2, $zero, 3
		addi $t0, $t0, 0
		
		#Array receive the numbers
		sw $s0, array($t0)
		addi $t0, $t0, 4
		sw $s1, array($t0)
		addi $t0, $t0, 4
		sw $s2, array($t0)
		
		#Print a first number of array
		lw $t1, array($zero)
		li $v0, 1
		addi $a0, $t1, 0
		syscall
	