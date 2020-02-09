package dao;

import dao.base.DAO;
import model.Matricula;

import java.util.List;
import java.util.Optional;

public class MatriculaDAO extends DAO<Matricula> {

    public MatriculaDAO() {
        super("matriculas");
    }

    @Override
    public boolean saveOrUpdate(Matricula entity) {
        return false;
    }

    @Override
    public Optional<Matricula> findById(Long id) {
        return Optional.empty();
    }

    @Override
    public List<Matricula> findAll() {
        return null;
    }

}
