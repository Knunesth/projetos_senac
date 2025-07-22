package aula06;

public class Anta extends Animal {

	public Anta(String nome, int idade, double peso) {
		super(nome, idade, peso);
	}
	
	@Override
	public void emitirSom() {
		System.out.println(" Cui-cui-cui ");
	}
	
	public void nadar() {
		System.out.println("Anta nadando!");
	}
}
