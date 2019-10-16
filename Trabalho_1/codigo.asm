.data
	texto: .space 100
	string: .space 100
	tam: .word 100
	novaLinha: .asciiz "\n"
	mensagem1: .asciiz "Digite 1 para encriptar e 0 para desencriptar: "
	mensagem2: .asciiz "Digite a frase: "
	mensagem3: .asciiz "Digite o fator de cifra: "
	mensagem5: .asciiz "Sua saída é:\n"
	
.text
	main:	
		#Printa a primeira mensagem
		li $v0, 4
		la $a0, mensagem1
		syscall
		
		#Pega a opção do usuário e armazena em uma variável
		li $v0, 5
		syscall
		
		move $t7, $v0
		
		#Printa segunda mensagem
		li $v0, 4
		la $a0, mensagem2
		syscall
		
		#Pega a frase digitada pelo usuário
		li $v0, 8
		la $a0, texto
		li $a1, 100
		syscall
	
		#Printa terceira mensagem
		li $v0, 4
		la $a0, mensagem3
		syscall

		#Pega o fator de cifra do usuário e guarda em uma variável
		li $v0, 5
		syscall
		
		move $t6, $v0		
	
		addi $t0, $zero, 0 #i = 0
		lw $t1, tam #Carrega o tamanho da palavra em um registrador
		sub $t1, $t1, 1 #Subtraindo 1 do tamanho, pois o contador começa em 0	

		#Condição para decidir se o código deve ser encriptado ou desencriptado
		beq $t7, $zero, loop2

		loop1:
			lb $t2, texto($t0)
			jal encripta
			
		return1:	
			sb $t2, string($t0) #Salva byte a byte na string
			addi $t0, $t0, 1 #Incrementa o índice de leitura
			addi $a2, $t1, 1 #Registrador para guardar o limite máximo
			bne $t0, $a2, loop1 #Enquanto não chegar ao limite, continua o loop
			j fim #Jump para o fim do código, para não entrar no loop2
			
		loop2:
			lb $t2, texto($t0)
			jal desencripta
			
		return2:	
			sb $t2, string($t0) #Salva byte a byte na string
			addi $t0, $t0, 1 #Incrementa o índice de leitura
			addi $a2, $t1, 1 #Registrador para guardar o limite máximo
			bne $t0, $a2, loop2 #Enquanto não chegar ao limite, continua o loop
			j fim #Coloquei por precaução, mas acho que não há necessidade
			
		fim:
			#Pula uma linha
			li $v0, 4
			la $a0, novaLinha
			syscall
		
			#Printa a quinta mensagem
			li $v0, 4
			la $a0, mensagem5
			syscall

			#Printa palavra encriptada
			li $v0, 4
			la $a0, string
			syscall	
		
			#fim do programa
			li $v0, 10
			syscall
		
		#Aritmética de decimais baseando-se na tabela ascii
		encripta:
			add $t2, $t2, $t6
			j return1

		desencripta:
			sub $t2, $t2, $t6
			j return2
