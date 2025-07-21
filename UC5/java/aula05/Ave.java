public class Ave extends Animal {
    private String corPena;

    public Ave(double peso, int idade, int qtdMembros, String corPena) {
        super(peso, idade, qtdMembros);
        this.corPena = corPena;
    }

    public void fazerNinho() {
        System.out.println("Construiu um ninho");
    }

    @Override
    public void locomover() {
        System.out.println("Voando");
    }

    @Override
    public void alimentar() {
        System.out.println("Comendo Frutas");
    }

    @Override
    public void emitirSom() {
        System.out.println("Quiaaaaa");
    }

    public String getCorPena() {
        return corPena;
    }

    public void setCorPena(String corPena) {
        this.corPena = corPena;
    }
}