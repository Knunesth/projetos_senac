#include <stdio.h>

int main() {
    char nome[50];
    int idade;
    int ingresso;

    printf("Digite seu nome: ");
    scanf(" %s", nome);

    printf("Digite sua idade: ");
    scanf("%d", &idade);

    printf("Voce possui ingresso? (1 para Sim, 0 para Nao): ");
    scanf("%d", &ingresso);

    if (idade >= 18 && ingresso == 1) {
        printf("Bem-vindo(a) %s! Entrada permitida.\n", nome);
    } else if (idade < 18) {
        printf("Entrada não permitida para menores de idade.\n");
    } else if (ingresso == 0) {
        printf("É necessário possuir ingresso para entrar.\n");
    } else {
        printf("Informacoes invalidas.\n");
    }

    return 0;
}
