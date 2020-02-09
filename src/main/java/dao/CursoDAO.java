package dao;

import dao.base.DAO;
import model.Curso;

public class CursoDAO extends DAO<Curso> {

    public CursoDAO() {
        super("cursos");
    }

}
