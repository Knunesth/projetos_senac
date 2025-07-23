package exercicio;

public class Peixe extends Animal implements Aquatico {

	 @Override
	 public void emitirSom() {
	     System.out.println("O peixe faz bolhas.");
	 }
	
	 @Override
	 public void nadar() {
	     System.out.println("O peixe está nadando.");
	 }
}