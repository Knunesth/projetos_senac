package exercicio;


public class Ave extends Animal implements Aereo {

	 @Override
	 public void emitirSom() {
	     System.out.println("A ave está cantando.");
	 }
	
	 @Override
	 public void voar() {
	     System.out.println("A ave está voando.");
	 }
}