package aula09;

public class Caminhao extends Veiculo implements Operacoes {
    private double capacidadeCarga;

    public Caminhao(String marca, String modelo, int ano, double preco, boolean disponivel, double capacidadeCarga) {
        super(marca, modelo, ano, preco, disponivel);
        this.capacidadeCarga = capacidadeCarga;
    }

    public double getCapacidadeCarga() {
        return capacidadeCarga;
    }

    @Override
    public double calcularSeguro() {
        return getPreco() * 0.05 * (1 + (2025 - getAno()) * 0.01);
    }

    @Override
    public void ligar() {
        System.out.println("Caminhão ligado.");
    }

    @Override
    public void desligar() {
        System.out.println("Caminhão desligado.");
    }

    @Override
    public void exibirInformacoes() {
        System.out.println("Caminhão: " + getMarca() + " " + getModelo() + " - Ano: " + getAno() + " - Carga: " + capacidadeCarga + " toneladas");
    }
}
