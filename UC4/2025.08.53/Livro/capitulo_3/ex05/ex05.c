#include <stdio.h>

int main(){
    float precoP;
    int opcao;
    float resultB;

    printf(" digite o preco: ");
    scanf(" %f", &precoP);
    printf(" Digite o tipo do produto \n 0- comida\n 1- eletronico\n2- Roupas\n");

    scanf(" %i", &opcao);

    switch (opcao)
    {
    case 0:      

        resultB = precoP * 1.10;

        printf("sua compra e de: %.2f", resultB);
        break;


    case 1:
        resultB = precoP * 1.20;

        printf("sua compra e de: %.2f", resultB);
        break;

     case 2:

        resultB = precoP * 1.20;

        printf("sua compra e de: %.2f", resultB);
        break;
    
    default:
    
        break;
    }
}