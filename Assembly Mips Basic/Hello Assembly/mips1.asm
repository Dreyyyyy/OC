.data #Local para variáveis com acesso randômico de memória;
	myMessage: .asciiz "Hello World!\n" #Nome da variável, seguido pelo seu tipo e o dado;

.text #Local para a codificação do programa;
	li $v0, 4 #Escolhe uma das opções a se fazer, no caso 4 é para ler uma string;
	la $a0, myMessage #Carrega o endereço da variável "myMessage" para o registrador $a0;
	syscall #Chama o sistema para executar o código.