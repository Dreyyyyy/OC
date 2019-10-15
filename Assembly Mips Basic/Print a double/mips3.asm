.data #Area for declaration of randomic memory access variables
	myDouble: .double 8.043 #Declaration of a variable, with your type and a data
	myZeroDouble: .double 0.0 #Declaration of a variable, with your type and a data

.text #Code area
	ldc1 $f0, myDouble #Load a double variable and storage in "$f0" register
	ldc1 $f2, myZeroDouble #Load a double variable and storage in "$f2" register
	li $v0, 3 #Load a option for print a double on screen
	add.d $f12, $f0, $f2 #Addition of double numbers
	syscall #Call the system for the execution of the code