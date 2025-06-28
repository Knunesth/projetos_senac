#include <stdio.h>

int main(){
    int n1, n2;
    int subtra;

    printf("Digite o primeiro numero: ");
    scanf("%d", &n1);
    printf("Digite o segundo numero: ");
    scanf("%d", &n2);
    subtra = n1 - n2;
    printf("A subtracao entre %d e %d e: %d", n1, n2, subtra);
    return 0;
}