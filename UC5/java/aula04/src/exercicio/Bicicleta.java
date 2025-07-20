public class Bicicleta extends Veiculo {
    @Override
    public void mover() {
        System.out.println("A bicicleta está sendo pedalada.");
    }

    @Override
    public String tipoCombustivel() {
        return "Nenhum (movida a pedal)";
    }
}
