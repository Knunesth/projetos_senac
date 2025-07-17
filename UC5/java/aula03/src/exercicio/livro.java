package exercicio;

public class livro {
	//atributos
	private String titulo;
	private String autor;
	private int anoPublicado;
	//metodos
	
	public livro(String titulo, String autor, int anoPublicado) {
		this.titulo = titulo;
		this.autor = autor;
		this.anoPublicado = anoPublicado;
	}
	

	//metodos
	
	public void biografia(){
		System.out.printf("Titulo: %s. \n Autor: %s. \n Ano de Publicacao: %d.", titulo, autor, anoPublicado);
	}
	
	//metodos get
	public String gettitulo(){
		return titulo;
	}
	
	public String getautor() {
		return autor;
	}
	
	public int getanoPublicado() {
		return anoPublicado;
	}
	
	//metodos set
	public void settitulo(String titulo){
		this.titulo = titulo;
	}
	
	public void setautor(String autor) {
		this.autor = autor;
	}
	
	public void setanoPublicado(int anoPublicado) {
		this.anoPublicado = anoPublicado;
	}
	
}
