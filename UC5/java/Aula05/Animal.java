public abstract class Animal {
    // Atributos
    private double peso;
    private int idade;
    private int qtdMembros;

    // Definicoes
    public Animal(double peso, int idade, int qtdMembros) {
        this.peso = peso;
        this.idade = idade;
        this.qtdMembros = qtdMembros;
    }

    // Metodos
    public abstract void locomover();
    public abstract void alimentar();
    public abstract void emitirSom();

    // Metodos Get e Set
    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public int getQtdMembros() {
        return qtdMembros;
    }

    public void setQtdMembros(int qtdMembros) {
        this.qtdMembros = qtdMembros;
    }

    @Override
    public String toString() {
        return "Peso=" + peso + ", Idade=" + idade + ", Membros=" + qtdMembros;
    }
}