#include <stdio.h>

int main(){
    //declaraçoes

    int idade = 26;
    float valorDoPgtm= 12.42;
    double velParticula = 2.92817029837;
    char tipoHabMotor = 'A';

    //instruçoes

    printf("Idade: %d\n", idade);
    printf("Valor do pagamento: %.2f\n", valorDoPgtm);
    printf("Velocidade da partícula: %lf\n", velParticula);
    printf("Tipo de habitação do motorista: %c\n", tipoHabMotor);

    return 0; //encerramento do programa
}