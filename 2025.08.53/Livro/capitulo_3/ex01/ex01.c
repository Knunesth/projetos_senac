//um programa q indique se o numero e positivo, negativo ou nulo

#include <stdio.h>
#include <string.h>

int main(){
    int n1;
    printf("Digite um numero");
    scanf(" %i", &n1);

    if(n1 > 0){
        printf("numero positivo");
    }else if (n1 = 0){
        printf("numero nulo");
    }else{
        printf("numero negativo");
    }
}