package aula09;

public class Carro extends Veiculo implements Operacoes {
    private int numeroPortas;

    public Carro(String marca, String modelo, int ano, double preco, boolean disponivel, int numeroPortas) {
        super(marca, modelo, ano, preco, disponivel);
        this.numeroPortas = numeroPortas;
    }

    public int getNumeroPortas() {
        return numeroPortas;
    }

    @Override
    public double calcularSeguro() {
        return getPreco() * 0.04 * (1 + (2025 - getAno()) * 0.01);
    }

    @Override
    public void ligar() {
        System.out.println("Carro ligado.");
    }

    @Override
    public void desligar() {
        System.out.println("Carro desligado.");
    }

    @Override
    public void exibirInformacoes() {
        System.out.println("Carro: " + getMarca() + " " + getModelo() + " - Ano: " + getAno() + " - Portas: " + numeroPortas);
    }
}
