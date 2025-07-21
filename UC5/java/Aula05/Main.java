public class Main {
    public static void main(String[] args) {
        Mamifero cachorro = new Mamifero(15.5, 5, 4, "Caramelo");
        Reptil cobra = new Reptil(2.1, 3, 0, "Verde");
        Peixe dourado = new Peixe(0.5, 1, 0, "Laranja");
        Ave canario = new Ave(0.2, 2, 2, "Amarelo");

        System.out.println("--- Mamifero ---");
        System.out.println(cachorro.toString() + ", Cor do Pelo=" + cachorro.getCorPelo());
            cachorro.locomover();
            cachorro.alimentar();
            cachorro.emitirSom();

        System.out.println("\n--- Reptil ---");
        System.out.println(cobra.toString() + ", Cor da Escama=" + cobra.getCorEscama());
            cobra.locomover();
            cobra.alimentar();
            cobra.emitirSom();

        System.out.println("\n--- Peixe ---");
        System.out.println(dourado.toString() + ", Cor da Escama=" + dourado.getCorEscama());
            dourado.locomover();
            dourado.alimentar();
            dourado.emitirSom();
            dourado.soltarBolha();

        System.out.println("\n--- Ave ---");
        System.out.println(canario.toString() + ", Cor da Pena=" + canario.getCorPena());
            canario.locomover();
            canario.alimentar();
            canario.emitirSom();
            canario.fazerNinho();
    }
}