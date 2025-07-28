package aula09;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        ArrayList<Veiculo> veiculos = new ArrayList<>();

        Carro carro = new Carro("Toyota", "Corolla", 2020, 80000, true, 4);
        Moto moto = new Moto("Honda", "CB500", 2019, 32000, false, 500);
        Caminhao caminhao = new Caminhao("Volvo", "FH", 2018, 180000, true, 25.0);

        veiculos.add(carro);
        veiculos.add(moto);
        veiculos.add(caminhao);

        for (Veiculo v : veiculos) {
            if (v instanceof Operacoes o) {
                o.ligar();
                o.exibirInformacoes();
                o.desligar();
            }

            System.out.printf("Valor do seguro: R$ %.2f\n", v.calcularSeguro());
            System.out.println("Disponível: " + (v.disponivel ? "Sim" : "Não"));
            System.out.println("--------------------------");
        }

        // desafio extra: filtrar disponiveis
        System.out.println("=== Veículos Disponíveis ===");
        for (Veiculo v : veiculos) {
            if (v.disponivel) {
                System.out.println(v.getMarca() + " " + v.getModelo());
            }
        }
    }
}
