package br.com.banco.contas;

import br.com.banco.model.Conta;
import br.com.banco.model.Tributavel;

public class ContaCorrente extends Conta implements Tributavel {

    public ContaCorrente(int numero, String titular, double saldo) {
        super(numero, titular, saldo);
    }

    @Override
    public void sacar(double valor) {
        if (valor <= getSaldo()) {
            alterarSaldo(-valor);
        } else {
            System.out.println("Saldo insuficiente na Conta Corrente.");
        }
    }

    @Override
    public void depositar(double valor) {
        alterarSaldo(valor);
    }

    @Override
    public double calcularTributo() {
        return getSaldo() * 0.01; // 1% de tributo
    }
}
