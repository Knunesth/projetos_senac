//um programa que calcula e imprime na tela a velocidade de um objeto, Os dados (Distancia e tempo) devem ser informados pelo usuario

#include <stdio.h>

int main(){
    float distancia, tempo, velocidade;
    printf("Digite a distancia que o objeto percorreu: ");
    scanf("%f", &distancia);
    printf("Digite o tempo que o objeto levou para percorrer a distancia: ");
    scanf("%f", &tempo);

    velocidade = distancia / tempo;

    printf("A velocidade do objeto e: %.2f m/s", velocidade);

    return 0;
}