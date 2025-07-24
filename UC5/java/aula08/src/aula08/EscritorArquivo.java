package aula08;

import java.io.FileWriter;//caracteres em arquivos
import java.io.PrintWriter;//fornece métodos para escrever dados formatados
import java.io.IOException;// uma exceção lançada quando ocorrem erros de input/output, incluindo aqueles relacionados à escrita de arquivos

public class EscritorArquivo {
	public static void main(String[] args) {
		try {
			PrintWriter escritorArquivo = new PrintWriter(new FileWriter("C:/Users/kaua58037966/Desktop/output.txt", true));
			
			escritorArquivo.println("POO com criacao de arquivos .txt");
			escritorArquivo.println("Ola Mundo!!");
			
			escritorArquivo.close();
			System.out.println("O arquivo foi criado!");
			
		} catch(IOException e) {
			e.printStackTrace();//método e linha de código específica causaram a exceção.
			System.err.println("Erro ao criar o arquivo!");
		}

	}

}
