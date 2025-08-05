package atividades.array;

import java.util.Scanner;

public class CadastroNotas {

    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);

        String[] nomes = new String[5];
        double[] nota1 = new double[5];
        double[] nota2 = new double[5];
        double[] medias = new double[5];

        // Leitura 
        for (int i = 0; i < 5; i++) {
            System.out.println("Digite o nome do " + (i + 1) + "º aluno:");
            nomes[i] = scanner.nextLine();

            System.out.println("Digite a primeira nota de " + nomes[i] + ":");
            nota1[i] = scanner.nextDouble();

            System.out.println("Digite a segunda nota de " + nomes[i] + ":");
            nota2[i] = scanner.nextDouble();

            scanner.nextLine(); // Limpar o buffer do teclado

            medias[i] = (nota1[i] + nota2[i]) / 2;
        }

        // exibicao
        System.out.println("\n--- Médias dos Alunos ---");
        for (int i = 0; i < 5; i++) {
            System.out.printf("Aluno: %s | Média: %.2f\n", nomes[i], medias[i]);
        }

        scanner.close();
    }
}
