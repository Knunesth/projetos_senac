#include <stdio.h>

int main(){
int n1, n2, n3;

    printf("Digite um numero: ");
    scanf(" %i", &n1);
    printf("Digite o segundo numero: ");
    scanf(" %i", &n2);
    printf("Digite o terceiro: ");
    scanf(" %i", &n3);

    if(n1 > n2 && n1 > n3){
        printf(" %i", n1);
    }else if(n2 > n1 && n2 > n3){
        printf(" %i", n2);
    }else if(n3 > n1 && n3 > n2){
        printf(" %i", n3);
    }else if(n1 == n3 && n1 == n2){
        printf(" %i, %i, %i", n1, n2, n3);
    }else{
        printf("Numero nulo");
    }
}