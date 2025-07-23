package exercicio;

public class Cachorro extends Animal implements Terrestre {

	 @Override
	 public void emitirSom() {
	     System.out.println("O cachorro está latindo.");
	 }
	
	 @Override
	 public void andar() {
	     System.out.println("O cachorro está andando.");
	 }
}