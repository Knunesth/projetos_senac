package aula04;

public class main {

	public static void main(String[] args) {
		Cachorro dog = new Cachorro("Max", 7, 55.50);
		
		System.out.println(dog.getNome());
		dog.emitirSom();
		
		Animal animal1 = new Animal("Cavalo", 50, 50.0);
		animal1.emitirSom();
	}

}
