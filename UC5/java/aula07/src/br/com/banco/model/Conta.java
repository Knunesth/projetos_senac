package br.com.banco.model;

public abstract class Conta {
	private int numero;
	private String titular;
	private double saldo;
	
	//construtor
	public Conta(int numero, String titular, double saldo) {
		super();
		this.numero = numero;
		this.titular = titular;
		this.saldo = saldo;
	}
	
	//metodos abstratos
	public abstract void sacar(double valor);
	public abstract void depositar(double valor);
	
	//metodo concreto
	public void exibirSaldo() {
		System.out.printf("Saldo %d", saldo);
	}
	
	//get & set
	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public String getTitular() {
		return titular;
	}

	public void setTitular(String titular) {
		this.titular = titular;
	}

	public double getSaldo() {
		return saldo;
	}

	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}
	
	
}
