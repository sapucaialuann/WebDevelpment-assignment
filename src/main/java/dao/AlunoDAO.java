package dao;

import dao.base.LoginDAO;
import model.Aluno;

public class AlunoDAO extends LoginDAO<Aluno> {

    public AlunoDAO() {
        super("alunos");
    }

}
