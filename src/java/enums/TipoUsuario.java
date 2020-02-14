package enums;

public enum TipoUsuario {

    ADMIN("admin"),
    INSTRUTOR("instrutor"),
    ALUNO("aluno");

    public final String tipo;
    
    private TipoUsuario(String tipo) {
        this.tipo = tipo;
    }

}
