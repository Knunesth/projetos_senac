#include <stdio.h>
#include <locale.h>

int main() {
    setlocale(LC_ALL, "Portuguese");

    int idade, maior_idade = 0;
    char sexo;
    float salario;
    float soma_salarios = 0;
    int total_moradores = 0;
    int existe_salario_abaixo_500 = 0;

    while (1) {
        printf("\nDigite a idade (0 para encerrar): ");
        scanf("%d", &idade);

        if (idade == 0) {
            break;
        }

        printf("Digite o sexo (m/f): ");
        scanf(" %c", &sexo);  

        printf("Digite o salário: R$ ");
        scanf("%f", &salario);

        // Verifica maior idade
        if (idade > maior_idade) {
            maior_idade = idade;
        }

        // Soma salários e conta moradores
        soma_salarios += salario;
        total_moradores++;

        if (salario < 500) {
            existe_salario_abaixo_500 = 1;
        }
    }

    if (total_moradores > 0) {
        float media_salarial = soma_salarios / total_moradores;

        printf("\n--- RESULTADOS ---\n");
        printf("Maior idade registrada: %d anos\n", maior_idade);
        printf("Média salarial: R$ %.2f\n", media_salarial);

        if (existe_salario_abaixo_500) {
            printf("Existe pelo menos um morador com salário abaixo de R$500.\n");
        } else {
            printf("Não existe morador com salário abaixo de R$500.\n");
        }
    } else {
        printf("\nNenhum morador foi registrado.\n");
    }

    return 0;
}
