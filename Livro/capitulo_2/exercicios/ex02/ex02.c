// faça um programa que leia tres caracteres do teclado e infrome na tela a palavra formada pelos tres caracteres em ordem inversa de entrada separados pelo caractere '-'

#include <stdio.h>

int main(){
    char a, b, c;
    printf("Digite tres caracteres: ");
    scanf("%c %c %c", &a, &b, &c);
    printf("%c-%c-%c\n", c, b, a);
    
    return 0;
}