public class Reptil extends Animal {
    private String corEscama;

    public Reptil(double peso, int idade, int qtdMembros, String corEscama) {
        super(peso, idade, qtdMembros);
        this.corEscama = corEscama;
    }

    @Override
    public void locomover() {
        System.out.println("Rastejando");
    }

    @Override
    public void alimentar() {
        System.out.println("Comendo Insetos");
    }

    @Override
    public void emitirSom() {
        System.out.println("shiiiiiiii");
    }

    public String getCorEscama() {
        return corEscama;
    }

    public void setCorEscama(String corEscama) {
        this.corEscama = corEscama;
    }
}