#include <stdio.h>

int main(){
        float compra;
        float soma;
        
        while(1){
            printf("Digite o valor da compra: ");
            scanf(" %f", &compra);

            if(compra == 0){
                printf("seu valor e: %.2f", soma);
                return 0;
            }
        soma += compra;
        }
}