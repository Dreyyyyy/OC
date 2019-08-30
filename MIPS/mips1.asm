#Declara��o de r�tulos
.data
	string1: .asciiz "Digite o primeiro valor: \n"
	string2: .asciiz "Digite o segundo valor: \n"
	string3: .asciiz "Resultado da soma: \n"

#In�cio do programa
.text
	#Leitura do primeiro valor
	li $v0, 4 #Carrega uma string
	la $a0, string1 #Carrega a string armazenada anteriormente
	syscall
	li $v0, 5 #L� o n�mero digitado no teclado
	syscall
	move $t0, $v0 #Move o n�mero para o registrador tempor�rio
	
	#Leitura do segundo valor
	li $v0, 4 #Carrega uma string
	la $a0, string2 #Carrega a string armazenada anteriormente
	syscall
	li $v0, 5 #L� o n�mero digitado no teclado
	syscall
	move $t1, $v0 #Move o n�mero para a vari�vel tempor�ria
	
	#Somando os dois valores
	add $t2, $t1, $t0 #Soma os valores dos registradores tempor�rios e armazena no registrador $t2
	
	#Imprimindo o resultado
	li $v0, 4 #Carrega uma string
	la $a0, string3 #Carrega a string armazenada anteriormente
	syscall
	li $v0, 1 #Imprime uma vari�vel na tela
	syscall
	move $a0, $t2 #Move o n�mero para o argumento
	syscall
	
	#Finalizando o programa
	li $v0, 10 #Encerra o programa(Exit)
	syscall