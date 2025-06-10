//crie duas variaveis A e B, e troque os valores delas. atribua os valores das variaveis diretamente pelo programa (em vez de ler pelo teclado) e imprima os valores de a e b antes e depois da troca, por exemplo para A = 1 e B = 3, ao final do programa A havera 3 e B tera 1.

#include <stdio.h>

int main(){
    int A = 1, B = 3;
    printf("Antes da troca: A = %d, B = %d\n", A, B);
    int aux = A;
    A = B;
    B = aux;
    printf("Depois da troca: A = %d, B = %d\n", A, B);

    return 0;
}