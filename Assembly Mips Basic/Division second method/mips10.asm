.text #Code area
	addi $t0, $zero, 25 #$t0 = 0 + 25
	addi $t1, $zero, 5 #$t1 = 0 + 5
	div $t0, $t1 #$t0 / $t1 == Quocient in lo and remainder in hi
	mflo $s0 #Move the Quocient storage in "lo" register to the "$s0" register
	li $v0, 1 #Load the option to print a integer on screen
	move $a0, $s0 #Move a value storage in "$s0" register to the "$a0" register
	syscall #Call the system to run this code