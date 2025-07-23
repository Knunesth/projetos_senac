package exercicio;

public class Main {
    public static void main(String[] args) {
        Cachorro cachorro = new Cachorro();
        Peixe peixe = new Peixe();
        Ave ave = new Ave();

        System.out.println("\n Cachorro ");
        cachorro.emitirSom();
        cachorro.dormir();
        
        if (cachorro instanceof Terrestre) {
            cachorro.andar();
        }

        System.out.println("\n Peixe ");
        peixe.emitirSom();
        peixe.dormir();
        if (peixe instanceof Aquatico) {
            peixe.nadar();
        }

        System.out.println("\n Ave");
        ave.emitirSom();
        ave.dormir();
        if (ave instanceof Aereo) {
            ave.voar();
        }
    }
}
