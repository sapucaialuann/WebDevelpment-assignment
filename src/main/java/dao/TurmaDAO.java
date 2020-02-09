package dao;

import dao.base.DAO;
import model.Turma;

import java.util.List;
import java.util.Optional;

public class TurmaDAO extends DAO<Turma> {

    public TurmaDAO() {
        super("turmas");
    }

    @Override
    public boolean saveOrUpdate(Turma entity) {
        return false;
    }

    @Override
    public Optional<Turma> findById(Long id) {
        return Optional.empty();
    }

    @Override
    public List<Turma> findAll() {
        return null;
    }

}
