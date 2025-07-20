public class Carro extends Veiculo {
    @Override
    public void mover() {
        System.out.println("O carro está andando na estrada.");
    }

    @Override
    public String tipoCombustivel() {
        return "Gasolina";
    }
}
