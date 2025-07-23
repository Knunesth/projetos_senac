package br.com.banco.contas;

import br.com.banco.model.Conta;
import br.com.banco.model.Tributavel;

public class ContaCorrente extends Conta implements Tributavel {

	public ContaCorrente(int numero, String titular, double saldo) {
		super(numero, titular, saldo);
	}
	
	@Override
	public void sacar(double valor) {
		System.out.println();
	}
	
	@Override
	public void depositar(double valor) {
		System.out.println();
	}
	
	@Override
	public double calcularTributo() {
		System.out.println();
		return 0;
	}


}
