package aula06;

public class Main {

	public static void main(String[] args) {
		Anta a1 = new Anta("Thor", 8, 40.00);
			a1.emitirSom();
			a1.nadar();
		Cachorro c1 = new Cachorro("Max", 16, 50.00);
			c1.emitirSom();
		
		Peixe p1= new Peixe("Pirarucu", 12.00);
			p1.nadar();
	}

}
