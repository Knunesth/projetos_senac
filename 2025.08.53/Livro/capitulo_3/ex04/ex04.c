#include <stdio.h>

int main(){
    int opcao;
    printf("Digite um numero de 1 a 4: ");
    printf("numero: ");
    scanf(" %i", &opcao);

    switch (opcao)
    {
    case 1:
        printf("parabens, voce digitou o numero 1");
        break;

    case 2:
        printf("parabens, voce digitou o numero 2");
        break;

    case 3:
        printf("parabens, voce digitou o numero 3");
        break;

    case 4:
        printf("parabens, voce digitou o numero 4");
        break;
    
    default:
        printf("Opcao invalida");
        break;
    }
}