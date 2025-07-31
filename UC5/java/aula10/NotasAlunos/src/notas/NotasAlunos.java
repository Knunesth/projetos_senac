package notas;

import java.util.Scanner;

public class NotasAlunos {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		
		System.out.println("Quantos Alunos: ");
		int totalAlunos = scanner.nextInt();
		
		double[] notas = new double[totalAlunos];
		double soma = 0;
		double maior = Double.MIN_VALUE;
		double menor = Double.MAX_VALUE;
		
		for(int i = 0; i < totalAlunos; i++) {
			System.out.println("Digite a nota do aluno" + (i++) + ": ");
			notas[i] = scanner.nextDouble();
			soma += notas[i];
		}
		
	}

}
