package enums;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
public enum Aprovacao {

    APROVADO("S"),
    REPROVADO("N");

    public final String valor;

}
