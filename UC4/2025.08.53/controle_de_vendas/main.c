#include <stdio.h>
#include <string.h>

int main(){
    char nomeProduto[50];
    int quantidade, numProdutos;
    float preco, totalProduto, totalDia;
    char continuar;

    do{
        totalDia = 0;
        printf("\n --- Registro de vendas do dia --- \n");
        printf("Quantos produtos diferentes foram vendidos hoje?");
        scanf(" %d", &numProdutos);

        for (int i = 1; i <= numProdutos; i++){
            printf("\n produto %d: \n", i);

            printf("Nome do produto: ");
            scanf(" %[^\n]s ", nomeProduto);

            printf("Quantidade vendida: ");
            scanf("%d", &quantidade);

            if(quantidade <= 0){
                printf("Quantidade invalida. Ignorando produto. \n");
                continue;
            }

            printf("Preco unitario: R$ ");
            scanf(" %f", &preco);

            if(preco < 0){
                printf("Preco invalido, Ignorando produto. \n");
                continue;
            }

            totalProduto = quantidade * preco;
            printf("Total do produto %s: R$ %.2f \n", nomeProduto, totalProduto);

            totalDia += totalProduto;
        }

        printf("\n Total geral de vendas do dia: R$ %.2f\n", totalDia);

        printf("\nDeseja registrar outro dia de vendas? (s/n): ");
        scanf(" %c", &continuar);
    }while (continuar == 's' || continuar == 'S');

    printf("\nEncerrando o sistema de vendas. \n");
    return 0;
}