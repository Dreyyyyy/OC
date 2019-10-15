.data #Declaração de variáveis de acesso randômico de memória;
	myInteger: .word 19 #Declaração da variável, seguido pelo seu tipo e o dado;

.text #Parte para codificação;
	la $v0, 1 #Carrega a opção escolhida a ser executada, no cado, printar um inteiro;
	lw $a0, myInteger #Grava a palavra que está em "myInteger" no registrador "$a0";
	syscall #Chama o sistema e executa o código.