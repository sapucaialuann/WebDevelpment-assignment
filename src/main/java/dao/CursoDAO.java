package dao;

import dao.base.DAO;
import model.Curso;

import java.util.List;
import java.util.Optional;

public class CursoDAO extends DAO<Curso> {

    public CursoDAO() {
        super("cursos");
    }

    @Override
    public boolean saveOrUpdate(Curso entity) {
        return false;
    }

    @Override
    public Optional<Curso> findById(Long id) {
        return Optional.empty();
    }

    @Override
    public List<Curso> findAll() {
        return null;
    }

}
