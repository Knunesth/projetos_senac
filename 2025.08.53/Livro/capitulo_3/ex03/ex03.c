#include <stdio.h>

int main(){
int opcao;
float raio, areaC; 
float baseR, alturaR, areaR;

    printf("1- circulo.\n");
    printf("2- retangulo.\n");
    printf("Resposta: ");
    scanf(" %i", &opcao);

    switch (opcao){
    case 1:{
        

        printf("Circulo\n");
        printf("Informe o raio: ");
        scanf(" %f", &raio);

        areaC = 3.1415 * (raio * raio);

        printf(" sua area e de: %.2f", areaC);
        break;
    }

    case 2: 

        printf("Retangulo\n");
        printf("Digite sua base: ");
        scanf(" %f", &baseR);
        printf("Digite a altura: ");
        scanf(" %f", &alturaR);

        areaR = (baseR * alturaR);

        printf(" sua area e de: %.2f", areaR);

        break;
    
    default:
        printf("Opcao invalida");
        break;
    }
}