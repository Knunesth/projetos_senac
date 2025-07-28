package exercicio;

import java.io.FileReader;
import java.io.BufferedReader;
import java.io.IOException;

public class EscritorArquivo {
    public static void main(String[] args) {
        String caminho = "alunos.txt";
        double somaNotas = 0;
        int quantidadeAlunos = 0;

        try {
            BufferedReader leitor = new BufferedReader(new FileReader(caminho));
            String linha;

            System.out.println("--- Lista de Alunos ---");
            while ((linha = leitor.readLine()) != null) {
                String[] partes = linha.split(";");

                if (partes.length == 2) {
                    String nome = partes[0];
                    double nota = Double.parseDouble(partes[1]);

                    System.out.println("Nome: " + nome + " | Nota: " + nota);

                    somaNotas += nota;
                    quantidadeAlunos++;
                }
            }

            leitor.close();

            if (quantidadeAlunos > 0) {
                double media = somaNotas / quantidadeAlunos;
                System.out.printf("Média geral das notas: %.2f\n", media);
            } else {
                System.out.println("Nenhum aluno encontrado no arquivo.");
            }

        } catch (IOException e) {
            e.printStackTrace();
            System.err.println("Erro ao ler o arquivo!");
        } catch (NumberFormatException e) {
            System.err.println("Erro ao converter nota para número.");
        }
    }
}
