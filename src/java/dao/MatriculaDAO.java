package dao;

import dao.connection.DatabaseConnection;
import model.Matricula;
import org.apache.commons.dbutils.DbUtils;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class MatriculaDAO extends DAO<Matricula> {

    public MatriculaDAO() {
        super("matriculas");
    }

    @Override
    public boolean saveOrUpdate(Matricula entity) {
        String query;
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;

        if (entity.getId() == null) {
            query = "INSERT INTO " + tableName + "(alunos_id, turmas_id, data_matricula, nota) VALUES (?, ?, ?, ?)";
        } else {
            query = "UPDATE " + tableName + " SET alunos_id = ?, turmas_id = ?, data_matricula = ?, nota = ? WHERE id = ?";
        }

        try {
            ps = conn.prepareStatement(query);
            ps.setLong(1, entity.getAluno().getId());
            ps.setLong(2, entity.getTurma().getId());
            ps.setDate(3, new Date(entity.getDataMatricula().getTime()));
            
            if (entity.getNota() == null) {
                ps.setNull(4, Types.DOUBLE);
            } else {
                ps.setDouble(4, entity.getNota());
            }

            if (entity.getId() != null) {
                ps.setLong(5, entity.getId());
                ps.executeUpdate();
            } else {
                ps.execute();
            }

            return true;
        } catch (SQLException e) {
            e.printStackTrace();

            return false;
        } finally {
            DbUtils.closeQuietly(conn);
            DbUtils.closeQuietly(ps);
        }
    }

    @Override
    public Optional<Matricula> findById(Long id) {
        String query = "SELECT * FROM " + tableName + " WHERE id = ?";
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        Matricula entity = new Matricula();

        try {
            ps = conn.prepareStatement(query);
            ps.setLong(1, id);
            rs = ps.executeQuery();

            if (rs.next()) {
                AlunoDAO alunoDAO = new AlunoDAO();
                TurmaDAO turmaDAO = new TurmaDAO();

                entity.setId(id);
                entity.setAluno(alunoDAO.findById(rs.getLong("alunos_id")).get());
                entity.setTurma(turmaDAO.findById(rs.getLong("turmas_id")).get());
                entity.setDataMatricula(rs.getDate("data_matricula"));
                entity.setNota(rs.getDouble("nota"));

                return Optional.of(entity);
            } else {
                return Optional.empty();
            }

        } catch (SQLException e) {
            e.printStackTrace();

            return Optional.empty();
        } finally {
            DbUtils.closeQuietly(conn);
            DbUtils.closeQuietly(ps);
            DbUtils.closeQuietly(rs);
        }
    }

    @Override
    public List<Matricula> findAll() {
        String query = "SELECT * FROM " + tableName;
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Matricula> list = new ArrayList<>();

        try {
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            Matricula entity;
            AlunoDAO alunoDAO = new AlunoDAO();
            TurmaDAO turmaDAO = new TurmaDAO();

            while (rs.next()) {
                entity = new Matricula();

                entity.setId(rs.getLong("id"));
                entity.setAluno(alunoDAO.findById(rs.getLong("alunos_id")).get());
                entity.setTurma(turmaDAO.findById(rs.getLong("turmas_id")).get());
                entity.setDataMatricula(rs.getDate("data_matricula"));
                entity.setNota(rs.getDouble("nota"));

                list.add(entity);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
            DbUtils.closeQuietly(ps);
            DbUtils.closeQuietly(rs);
        }

        return list;
    }
    
    public List<Matricula> findByAlunoId(Long id) {
        String query = "SELECT * FROM " + tableName + " WHERE alunos_id = ?";
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Matricula> list = new ArrayList<>();

        try {
            ps = conn.prepareStatement(query);
            ps.setLong(1, id);
            rs = ps.executeQuery();
            Matricula entity;
            AlunoDAO alunoDAO = new AlunoDAO();
            TurmaDAO turmaDAO = new TurmaDAO();

            while (rs.next()) {
                entity = new Matricula();

                entity.setId(rs.getLong("id"));
                entity.setAluno(alunoDAO.findById(rs.getLong("alunos_id")).get());
                entity.setTurma(turmaDAO.findById(rs.getLong("turmas_id")).get());
                entity.setDataMatricula(rs.getDate("data_matricula"));
                entity.setNota(rs.getDouble("nota"));

                list.add(entity);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
            DbUtils.closeQuietly(ps);
            DbUtils.closeQuietly(rs);
        }

        return list;
    }
    
    public List<Matricula> findByTurmaId(Long id) {
        String query = "SELECT * FROM " + tableName + " WHERE turmas_id = ?";
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Matricula> list = new ArrayList<>();

        try {
            ps = conn.prepareStatement(query);
            ps.setLong(1, id);
            rs = ps.executeQuery();
            Matricula entity;
            AlunoDAO alunoDAO = new AlunoDAO();
            TurmaDAO turmaDAO = new TurmaDAO();

            while (rs.next()) {
                entity = new Matricula();

                entity.setId(rs.getLong("id"));
                entity.setAluno(alunoDAO.findById(rs.getLong("alunos_id")).get());
                entity.setTurma(turmaDAO.findById(rs.getLong("turmas_id")).get());
                entity.setDataMatricula(rs.getDate("data_matricula"));
                entity.setNota(rs.getDouble("nota"));

                list.add(entity);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
            DbUtils.closeQuietly(ps);
            DbUtils.closeQuietly(rs);
        }

        return list;
    }

}
