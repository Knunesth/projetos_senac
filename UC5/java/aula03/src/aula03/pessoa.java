package aula03;

public class pessoa {
	//atributos
	public String nome;
	public int idade;
	public double altura;
	public char genero;
	private String cpf;
	private double contaBancaria;
	
	//metodo contrutor
	public pessoa(String nome, int idade, double altura, char genero, String cpf){
		this.nome = nome;
		this.idade = idade;
		this.altura = altura;
		this.genero = genero;
		this.cpf = cpf;
		
	}
	
	
	//metodo
	public void sobrePessoa(){
		System.out.println();
		System.out.println(" Meu nome e " + nome + ", e tenho "+ idade + " anos.");
		System.out.printf(" Cujo os dados informados sao: \n CPF: %s \n Altura: %.2f \n Genero: %c \n", cpf, altura, genero);
	}
	
	public void criarContaBancaria(double contaBancaria){
		if(idade >= 18) {
			this.contaBancaria = contaBancaria;
		}else {
			System.out.println("Menor de idade");
		}
	}
	
	public void consultarSaldo(){
		System.out.println(contaBancaria);
	}
	
}

