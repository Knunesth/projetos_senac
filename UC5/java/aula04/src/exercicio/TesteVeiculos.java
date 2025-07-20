public class TesteVeiculos {
    public static void main(String[] args) {
        Veiculo v = new Veiculo();
        Carro c = new Carro();
        Bicicleta b = new Bicicleta();

        v.mover();
        System.out.println("Combustível: " + v.tipoCombustivel());
        System.out.println();

        c.mover();
        System.out.println("Combustível: " + c.tipoCombustivel());
        System.out.println();

        b.mover();
        System.out.println("Combustível: " + b.tipoCombustivel());
    }
}
