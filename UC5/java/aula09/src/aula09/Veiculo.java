package aula09;

public abstract class Veiculo {
    private String marca;
    private String modelo;
    private int ano;
    private double preco;
    public boolean disponivel;

    public Veiculo(String marca, String modelo, int ano, double preco, boolean disponivel) {
        this.marca = marca;
        this.modelo = modelo;
        this.ano = ano;
        this.preco = preco;
        this.disponivel = disponivel;
    }

    public String getMarca() { 
    	return marca;
    }
    
    public String getModelo() {
    	return modelo; 
    }
    
    public int getAno() {
    	return ano; 
    }
    
    public double getPreco() {
    	return preco; 
    }

    public void setMarca(String marca) { 
    	this.marca = marca; 
    }
    
    public void setModelo(String modelo) { 
    	this.modelo = modelo; 
    }
    
    public void setAno(int ano) {
    	this.ano = ano; 
    }
    
    public void setPreco(double preco) { 
    	this.preco = preco;
    }

    public void alterarDisponibilidade(boolean status) {
        this.disponivel = status;
    }

    public abstract double calcularSeguro();
}

