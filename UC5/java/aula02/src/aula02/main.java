package aula02;

public class main {

	public static void main(String[] args) {
		// criar um objeto a partir de uma classe
		//pessoa 1
		pessoa pessoa1 = new pessoa();
			pessoa1.nome = "Kauã";
			pessoa1.cpf = "23874317835";
			pessoa1.corDosOlhos = "preto";
			pessoa1.sexualidade = "Hetero";
			pessoa1.idade = 18;
		//pessoa 2
		pessoa pessoa2 = new pessoa();
			pessoa2.nome = "Pedro";
			pessoa2.cpf = "21244317835";
			pessoa2.corDosOlhos = "castanho";
			pessoa2.sexualidade = "GAY";
			pessoa2.idade = 19;
		//pessoa 3
		pessoa pessoa3 = new pessoa();
			pessoa3.nome = "Glauber";
			pessoa3.cpf = "93464317835";
			pessoa3.corDosOlhos = "castanho claro";
			pessoa3.sexualidade = "Hetero";
			pessoa3.idade = 19;
		//pessoa 4
		pessoa pessoa4 = new pessoa();
			pessoa4.nome = "Gabriel";
			pessoa4.cpf = "24244317835";
			pessoa4.corDosOlhos = "castanho";
			pessoa4.sexualidade = "bisexual";
			pessoa4.idade = 18;
			
	
	 pessoa1.listarPessoa();
	 System.out.println();
	 pessoa2.listarPessoa();
	 System.out.println();
	 pessoa3.listarPessoa();
	 System.out.println();
	 pessoa4.listarPessoa();
	 System.out.println();
		
	}

}
