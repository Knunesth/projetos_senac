package aula06;

public class Peixe implements Nadador {
	String especie;
	double peso;
	
	
	//contrutor
	public Peixe(String especie, Double peso) {
		super();
		this.especie = especie;
		this.peso = peso;
	}
	
	//metodos
	public String getEspecie() {
		return especie;
	}

	public void setEspecie(String especie) {
		this.especie = especie;
	}

	public double getPeso() {
		return peso;
	}

	public void setPeso(double peso) {
		this.peso = peso;
	}

	//acao
	@Override
	public void nadar() {
		System.out.println(" Peixe nandando! ");
		
	}

}
