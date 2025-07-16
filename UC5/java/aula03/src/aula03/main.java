package aula03;

public class main {
	public static void main(String[] args) {
		
		pessoa pessoa1 = new pessoa("kaua", 18, 1.77, 'm', "000.000.000-00");	
		
		pessoa1.criarContaBancaria(10000000000000.00);
		pessoa1.sobrePessoa();
	}
}
