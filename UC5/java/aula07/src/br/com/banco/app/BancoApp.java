package br.com.banco.app;

import br.com.banco.model.Conta;
import br.com.banco.model.Tributavel;
import br.com.banco.contas.ContaCorrente;
import br.com.banco.contas.ContaPoupanca;

public class BancoApp {
    public static void main(String[] args) {
        // Usando polimorfismo
        Conta conta1 = new ContaCorrente(1, "João", 1000);
        Conta conta2 = new ContaPoupanca(2, "Maria", 1000);

        // Operações
        conta1.sacar(50);     
        conta2.depositar(200); 

        // Exibir saldos
        System.out.println("Conta Corrente - " + conta1.getTitular());
        conta1.exibirSaldo();

        if (conta1 instanceof Tributavel) {
            Tributavel t = (Tributavel) conta1;
            System.out.printf("Tributo: R$ %.2f\n", t.calcularTributo());
        }

        System.out.println();

        System.out.println("Conta Poupança - " + conta2.getTitular());
        conta2.exibirSaldo();
    }
}
