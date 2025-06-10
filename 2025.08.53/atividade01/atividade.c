#include <stdio.h>

int main(){
    int idade;
    float valorDoPgto;
    double velParticula;
    char tipoHabMotor;

        printf("Informe a idade: ");
        scanf(" %d", &idade);
        printf("Informe o valor do pagamento: ");
        scanf(" %.2f", &valorDoPgto);
        printf("Informe a velocidade da particula: ");
        scanf(" %lf", &velParticula);
        printf("Informe o tipo da habilitação: ");
        scanf(" %s", &tipoHabMotor);

        printf("Dados informados: \n%d, \n%.2f, \n%lf, \n%s.", idade, valorDoPgto, velParticula, tipoHabMotor);
    return 0;
}