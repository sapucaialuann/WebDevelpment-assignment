package enums;

public enum Aprovacao {

    APROVADO("S"),
    REPROVADO("N");

    public final String valor;
    
    private Aprovacao(String valor) {
        this.valor = valor;
    }

}
