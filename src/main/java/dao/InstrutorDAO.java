package dao;

import dao.base.LoginDAO;
import model.Instrutor;

public class InstrutorDAO extends LoginDAO<Instrutor> {

    public InstrutorDAO() {
        super("instrutores");
    }

}
