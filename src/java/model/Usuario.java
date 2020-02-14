package model;

import enums.TipoUsuario;
import org.mindrot.jbcrypt.BCrypt;

public class Usuario extends Entity {

    private String nome;
    private String login;
    private String senha;
    private TipoUsuario tipo;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public TipoUsuario getTipo() {
        return tipo;
    }

    public void setTipo(TipoUsuario tipo) {
        this.tipo = tipo;
    }

    public String hashPassword() {
        return BCrypt.hashpw(this.senha, BCrypt.gensalt());
    }

}
