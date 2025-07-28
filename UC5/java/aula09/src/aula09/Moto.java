package aula09;

public class Moto extends Veiculo implements Operacoes {
    private int cilindradas;

    public Moto(String marca, String modelo, int ano, double preco, boolean disponivel, int cilindradas) {
        super(marca, modelo, ano, preco, disponivel);
        this.cilindradas = cilindradas;
    }

    public int getCilindradas() {
        return cilindradas;
    }

    @Override
    public double calcularSeguro() {
        return getPreco() * 0.06 * (1 + (2025 - getAno()) * 0.01);
    }

    @Override
    public void ligar() {
        System.out.println("Moto ligada.");
    }

    @Override
    public void desligar() {
        System.out.println("Moto desligada.");
    }

    @Override
    public void exibirInformacoes() {
        System.out.println("Moto: " + getMarca() + " " + getModelo() + " - Ano: " + getAno() + " - Cilindradas: " + cilindradas);
    }
}
