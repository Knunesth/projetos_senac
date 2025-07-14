package aula01_java;

import java.util.Scanner;

public class main {
	public static void main(String[] args) {
		Scanner sc = new Scanner (System.in);
		System.out.println("Hello, word!");
		
		System.out.println("Digite a primeira nota: ");
		double n1 = sc.nextDouble();
		System.out.println("Digite a primeira a segunda nota: ");
		double n2 = sc.nextDouble();
		
		double media = (n1 + n2) / 2;
		if(media >= 6) {
			System.out.print("Aprovado");
		}else if(media == 5) {
			System.out.print("Recuperacao");
		}else {
			System.out.print("Reprovado");
		}
		System.out.println(" pois sua media e igual a " + media + "cujo os numeros foram, " + n1 + " e " + n2 + ".");
		
		sc.close();
		
		for(int i = 1; i <= 100; i++) {
			if(i % 2 != 0) {
				System.out.println("Numeros par: " + i);
			}
		}
	}
}
