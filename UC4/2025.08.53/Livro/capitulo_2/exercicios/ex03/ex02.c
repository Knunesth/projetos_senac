// faça um programa que leia tras coeficientes reais a, b e c de uma equaçao do segundo grau informe na tela as suas raizes reais

#include <stdio.h>
#include <math.h>

int main() {
    float a, b, c, delta, r1, r2;

    printf("Digite o valor de a: ");
    scanf("%f", &a);
    printf("Digite o valor de b: ");
    scanf("%f", &b);
    printf("Digite o valor de c: ");
    scanf("%f", &c);

    delta = (b * b) - (4 * a * c);

    if (delta < 0) {
        printf("A equação não tem raízes reais\n");
    } else if (delta == 0) {
        r1 = -b / (2 * a);
        printf("A equação tem uma raiz real: %.2f\n", r1);
    } else {
        r1 = (-b + sqrt(delta)) / (2 * a);
        r2 = (-b - sqrt(delta)) / (2 * a);
        printf("A equação tem duas raízes reais: %.2f e %.2f\n", r1, r2);
    }

    return 0;
}
