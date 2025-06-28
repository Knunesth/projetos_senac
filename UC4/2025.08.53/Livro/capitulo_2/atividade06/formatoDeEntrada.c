#include <stdio.h>

int main(){
    int idade;
    float valorDoPgtm;
    double velParticula;
    char tipoHabMotor;

    printf("Informe a idade: ");
    scanf(" %d", &idade);
    printf("Informe o valor do pagamento: ");
    scanf(" %f", &valorDoPgtm);
    printf("Informe a velocidade da partícula: ");
    scanf(" %lf", &velParticula);
    printf("Informe o tipo de habitação: ");
    scanf(" %c", &tipoHabMotor);

    printf("Dados informados: \n%d. \n%f. \n%lf. \n%c. \n", idade, valorDoPgtm, velParticula, tipoHabMotor);

    return 0;
}