package aula06;

public abstract class Animal {
	String nome;
	int idade;
	double peso;
	
	public Animal(String nome, int idade, double peso) {
		super();
		this.nome = nome;
		this.idade = idade;
		this.peso = peso;
	}
	
	
	
	public abstract void emitirSom();//metodo abstrato nao possui cargo
	
	//metodos get & set
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getIdade() {
		return idade;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}

	public double getPeso() {
		return peso;
	}

	public void setPeso(double peso) {
		this.peso = peso;
	}
	
}
