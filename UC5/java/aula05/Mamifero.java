public class Mamifero extends Animal {
    private String corPelo;

    public Mamifero(double peso, int idade, int qtdMembros, String corPelo) {
        super(peso, idade, qtdMembros);
        this.corPelo = corPelo;
    }

    @Override
    public void locomover() {
        System.out.println("Correndo");
    }

    @Override
    public void alimentar() {
        System.out.println("Mamando");
    }

    @Override
    public void emitirSom() {
        System.out.println("auauau");
    }

    public String getCorPelo() {
        return corPelo;
    }

    public void setCorPelo(String corPelo) {
        this.corPelo = corPelo;
    }
}