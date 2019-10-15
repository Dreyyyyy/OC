.data #Parte onde se declara variáveis de acesso randômico a memória;
	myCharacter: .byte 'm' #Declaração de uma variável, seguido pelo seu tipo e o dado;

.text #Parte onde se condifica;
	li $v0, 4 #Carrega uma instrução para o registrador, no caso 4 para printar algo;
	la $a0, myCharacter #Armazena o endereço da variável "myCharacter" no registrador "$a0";
	syscall #Comando para o sistema executar o código.