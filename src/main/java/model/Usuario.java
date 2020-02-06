package model;

import lombok.Getter;
import lombok.Setter;
import org.mindrot.jbcrypt.BCrypt;

@Getter
public abstract class Usuario {

    @Setter
    private String nome;

    @Setter
    private String login;

    private String senha;

    public void setSenha(String senha) {
        this.senha = BCrypt.hashpw(senha, BCrypt.gensalt());
    }

}
