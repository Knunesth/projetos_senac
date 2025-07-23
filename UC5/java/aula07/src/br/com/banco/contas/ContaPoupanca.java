package br.com.banco.contas;

import br.com.banco.model.Conta;

public class ContaPoupanca extends Conta{

	//contrutor
	public ContaPoupanca(int numero, String titular, double saldo) {
		super(numero, titular, saldo);
	}
	
	@Override
	public double sacar (double valor) {
		return 0;
	}
	
	@Override
	public double depositar(double valor) {
		return 0;
	}

	
	
	
}
