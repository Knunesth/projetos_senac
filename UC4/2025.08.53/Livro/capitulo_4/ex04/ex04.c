#include <stdio.h>

int main(){
    int numero;
    int resultado;
    int i;
    printf("Digite um numero para aparecer na tabuada: ");
    scanf("%i", &numero);
    for(i = 0; i <= 10; i++){
        resultado = numero * i;
        printf("%i * %i = %i\n", numero, i, resultado);
    }
}