package dao;

import dao.connection.DatabaseConnection;
import model.Turma;
import org.apache.commons.dbutils.DbUtils;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class TurmaDAO extends DAO<Turma> {

    public TurmaDAO() {
        super("turmas");
    }

    @Override
    public boolean saveOrUpdate(Turma entity) {
        String query;
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;

        if (entity.getId() == null) {
            query = "INSERT INTO " + tableName + "(instrutores_id, cursos_id, data_inicio, data_final, carga_horaria) VALUES (?, ?, ?, ?, ?)";
        } else {
            query = "UPDATE " + tableName + " SET instrutores_id = ?, cursos_id = ?, data_inicio = ?, data_final = ?, carga_horaria = ? WHERE id = ?";
        }

        try {
            ps = conn.prepareStatement(query);
            ps.setLong(1, entity.getInstrutor().getId());
            ps.setLong(2, entity.getCurso().getId());
            
            if (entity.getDataInicio() == null) {
                ps.setNull(3, Types.DATE);
            } else {
                ps.setDate(3, new Date(entity.getDataInicio().getTime()));
            }
            
            if (entity.getDataFinal() == null) {
                ps.setNull(4, Types.DATE);
            } else {
                ps.setDate(4, new Date(entity.getDataFinal().getTime()));
            }

            if (entity.getCargaHoraria() == null) {
                ps.setNull(5, Types.SMALLINT);
            } else {
                ps.setShort(5, entity.getCargaHoraria());
            }

            if (entity.getId() != null) {
                ps.setLong(6, entity.getId());
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
    public Optional<Turma> findById(Long id) {
        String query = "SELECT * FROM " + tableName + " WHERE id = ?";
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        Turma entity = new Turma();

        try {
            ps = conn.prepareStatement(query);
            ps.setLong(1, id);
            rs = ps.executeQuery();

            if (rs.next()) {
                InstrutorDAO instrutorDAO = new InstrutorDAO();
                CursoDAO cursoDAO = new CursoDAO();

                entity.setId(id);
                entity.setInstrutor(instrutorDAO.findById(rs.getLong("instrutores_id")).get());
                entity.setCurso(cursoDAO.findById(rs.getLong("cursos_id")).get());
                entity.setDataInicio(rs.getDate("data_inicio"));
                entity.setDataFinal(rs.getDate("data_final"));
                entity.setCargaHoraria(rs.getShort("carga_horaria"));

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
    public List<Turma> findAll() {
        String query = "SELECT * FROM " + tableName;
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Turma> list = new ArrayList<>();

        try {
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            Turma entity;
            InstrutorDAO instrutorDAO = new InstrutorDAO();
            CursoDAO cursoDAO = new CursoDAO();

            while (rs.next()) {
                entity = new Turma();

                entity.setId(rs.getLong("id"));
                entity.setInstrutor(instrutorDAO.findById(rs.getLong("instrutores_id")).get());
                entity.setCurso(cursoDAO.findById(rs.getLong("cursos_id")).get());
                entity.setDataInicio(rs.getDate("data_inicio"));
                entity.setDataFinal(rs.getDate("data_final"));
                entity.setCargaHoraria(rs.getShort("carga_horaria"));

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
    
    public List<Turma> findByNotAlunoId(Long id) {
        String query = "SELECT * FROM " + tableName + " t WHERE NOT EXISTS(SELECT NULL FROM matriculas m JOIN turmas t2 ON m.turmas_id = t2.id WHERE m.alunos_id = ? AND t2.cursos_id = t.cursos_id)";
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Turma> list = new ArrayList<>();

        try {
            ps = conn.prepareStatement(query);
            ps.setLong(1, id);
            rs = ps.executeQuery();
            Turma entity;
            InstrutorDAO instrutorDAO = new InstrutorDAO();
            CursoDAO cursoDAO = new CursoDAO();

            while (rs.next()) {
                entity = new Turma();

                entity.setId(rs.getLong("id"));
                entity.setInstrutor(instrutorDAO.findById(rs.getLong("instrutores_id")).get());
                entity.setCurso(cursoDAO.findById(rs.getLong("cursos_id")).get());
                entity.setDataInicio(rs.getDate("data_inicio"));
                entity.setDataFinal(rs.getDate("data_final"));
                entity.setCargaHoraria(rs.getShort("carga_horaria"));

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
    
    public List<Turma> findByInstrutorId(Long id) {
        String query = "SELECT * FROM " + tableName + " WHERE instrutores_id = ?";
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Turma> list = new ArrayList<>();

        try {
            ps = conn.prepareStatement(query);
            ps.setLong(1, id);
            rs = ps.executeQuery();
            Turma entity;
            InstrutorDAO instrutorDAO = new InstrutorDAO();
            CursoDAO cursoDAO = new CursoDAO();

            while (rs.next()) {
                entity = new Turma();

                entity.setId(rs.getLong("id"));
                entity.setInstrutor(instrutorDAO.findById(rs.getLong("instrutores_id")).get());
                entity.setCurso(cursoDAO.findById(rs.getLong("cursos_id")).get());
                entity.setDataInicio(rs.getDate("data_inicio"));
                entity.setDataFinal(rs.getDate("data_final"));
                entity.setCargaHoraria(rs.getShort("carga_horaria"));

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
    
    @Override
    public boolean delete(Long id) {
        String query = "DELETE FROM matriculas WHERE turmas_id = ?";
        PreparedStatement ps = null;
        Connection conn = DatabaseConnection.getConn();

        try {
            ps = conn.prepareStatement(query);
            ps.setLong(1, id);
            ps.execute();

            return super.delete(id);
        } catch (SQLException e) {
            e.printStackTrace();

            return false;
        } finally {
            DbUtils.closeQuietly(conn);
            DbUtils.closeQuietly(ps);
        }
    }

}
