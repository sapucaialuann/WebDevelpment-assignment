package dao;

import dao.base.LoginDAO;
import enums.TipoUsuario;
import model.Instrutor;
import model.base.Usuario;

import java.util.List;
import java.util.Optional;

public class InstrutorDAO extends LoginDAO<Instrutor> {

    public InstrutorDAO() {
        super("instrutores");
    }

    @Override
    public Optional<Usuario> login(String login, String password) {
        return this.login(login, password, TipoUsuario.INSTRUTOR);
    }

    @Override
    public boolean saveOrUpdate(Instrutor entity) {
        return false;
    }

    @Override
    public Optional<Instrutor> findById(Long id) {
        return Optional.empty();
    }

    @Override
    public List<Instrutor> findAll() {
        return null;
    }

}
