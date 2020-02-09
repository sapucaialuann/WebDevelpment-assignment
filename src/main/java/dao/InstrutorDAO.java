package dao;

import dao.base.LoginDAO;
import enums.TipoUsuario;
import model.Instrutor;
import model.base.Usuario;

import java.util.Optional;

public class InstrutorDAO extends LoginDAO<Instrutor> {

    public InstrutorDAO() {
        super("instrutores");
    }

    @Override
    public Optional<Usuario> login(String login, String password) {
        return this.login(login, password, TipoUsuario.INSTRUTOR);
    }
}
