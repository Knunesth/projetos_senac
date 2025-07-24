package br.com.banco.contas;

import br.com.banco.model.Conta;

public class ContaPoupanca extends Conta {

    public ContaPoupanca(int numero, String titular, double saldo) {
        super(numero, titular, saldo);
    }

    @Override
    public void sacar(double valor) {
        if (valor <= getSaldo()) {
            alterarSaldo(-valor);
        } else {
            System.out.println("Saldo insuficiente na Conta Poupança.");
        }
    }

    @Override
    public void depositar(double valor) {
        alterarSaldo(valor);
    }
}
