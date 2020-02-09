package dao;

import dao.base.LoginDAO;
import enums.TipoUsuario;
import model.Aluno;
import model.base.Usuario;

import java.util.Optional;

public class AlunoDAO extends LoginDAO<Aluno> {

    public AlunoDAO() {
        super("alunos");
    }

    @Override
    public Optional<Usuario> login(String login, String password) {
        return this.login(login, password, TipoUsuario.ALUNO);
    }

}
