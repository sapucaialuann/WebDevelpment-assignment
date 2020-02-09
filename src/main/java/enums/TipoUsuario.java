package enums;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
public enum TipoUsuario {

    ADMIN("admin"),
    INSTRUTOR("instrutor"),
    ALUNO("aluno");

    public final String tipo;

}
