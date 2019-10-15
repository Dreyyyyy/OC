.data #Definition of randomic memory access variables
	Pi: .float 3.14159 #Declaration of a variable, with a type and a data

.text #Coding area
	li $v0, 2 #Load a option to print a float in the screen
	lwc1 $f12, Pi #Storage a float in a Coproc variable "$f12"
	syscall #Call the system to execute the code