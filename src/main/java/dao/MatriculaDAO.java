package dao;

import dao.base.DAO;
import model.Matricula;

public class MatriculaDAO extends DAO<Matricula> {

    public MatriculaDAO() {
        super("matriculas");
    }

}
