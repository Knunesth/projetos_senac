public class Peixe extends Animal {
    private String corEscama;

    public Peixe(double peso, int idade, int qtdMembros, String corEscama) {
        super(peso, idade, qtdMembros);
        this.corEscama = corEscama;
    }

    public void soltarBolha() {
        System.out.println("Soltou uma bolha ~~glub glub~~");
    }

    @Override
    public void locomover() {
        System.out.println("Nadando");
    }

    @Override
    public void alimentar() {
        System.out.println("Comendo coisas");
    }

    @Override
    public void emitirSom() {
        System.out.println("glugluglu");
    }

    public String getCorEscama() {
        return corEscama;
    }

    public void setCorEscama(String corEscama) {
        this.corEscama = corEscama;
    }
}