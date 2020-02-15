package dao;

import dao.connection.DatabaseConnection;
import enums.Aprovacao;
import enums.TipoUsuario;
import model.Aluno;
import model.Usuario;
import org.apache.commons.dbutils.DbUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

public class AlunoDAO extends LoginDAO<Aluno> {

    public AlunoDAO() {
        super("alunos");
    }

    @Override
    public Optional<Usuario> login(String login, String password) {
        return this.login(login, password, TipoUsuario.ALUNO);
    }

    @Override
    public boolean saveOrUpdate(Aluno entity) {
        String query;
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;

        if (entity.getId() == null) {
            query = "INSERT INTO " + tableName + "(nome, login, senha, cpf, email, celular, endereco, cidade, bairro, cep, comentario, aprovado) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        } else {
            query = "UPDATE " + tableName + " SET nome = ?, login = ?, senha = ?, cpf = ?, email = ?, celular = ?, endereco = ?, cidade = ?, bairro = ?, cep = ?, comentario = ?, aprovado = ? WHERE id = ?";
        }

        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, entity.getNome());
            ps.setString(2, entity.getLogin());
            
            if (!entity.getSenha().contains("$2a$")) {
                ps.setString(3, entity.hashPassword());
            } else {
                ps.setString(3, entity.getSenha());
            }
            
            ps.setString(4, entity.getCpf());
            ps.setString(5, entity.getEmail());
            ps.setString(6, entity.getCelular());
            ps.setString(7, entity.getEndereco());
            ps.setString(8, entity.getCidade());
            ps.setString(9, entity.getBairro());
            ps.setString(10, entity.getCep());
            ps.setString(11, entity.getComentario());
            ps.setString(12, entity.getAprovado().valor);

            if (entity.getId() != null) {
                ps.setLong(13, entity.getId());
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
    public Optional<Aluno> findById(Long id) {
        String query = "SELECT * FROM " + tableName + " WHERE id = ?";
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        Aluno entity = new Aluno();

        try {
            ps = conn.prepareStatement(query);
            ps.setLong(1, id);
            rs = ps.executeQuery();

            if (rs.next()) {
                entity.setId(id);
                entity.setLogin(rs.getString("login"));
                entity.setNome(rs.getString("nome"));
                entity.setSenha(rs.getString("senha"));
                entity.setCpf(rs.getString("cpf"));
                entity.setEmail(rs.getString("email"));
                entity.setCelular(rs.getString("celular"));
                entity.setEndereco(rs.getString("endereco"));
                entity.setCidade(rs.getString("cidade"));
                entity.setBairro(rs.getString("bairro"));
                entity.setCep(rs.getString("cep"));
                entity.setComentario(rs.getString("comentario"));
                
                for (Aprovacao a : Aprovacao.values()) {
                    if (a.valor.equals(rs.getString("aprovado"))) {
                        entity.setAprovado(a);
                    }
                }

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
    public List<Aluno> findAll() {
        String query = "SELECT * FROM " + tableName;
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Aluno> list = new ArrayList<>();

        try {
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            Aluno entity;

            while (rs.next()) {
                entity = new Aluno();
                entity.setId(rs.getLong("id"));
                entity.setLogin(rs.getString("login"));
                entity.setNome(rs.getString("nome"));
                entity.setSenha(rs.getString("senha"));
                entity.setCpf(rs.getString("cpf"));
                entity.setEmail(rs.getString("email"));
                entity.setCelular(rs.getString("celular"));
                entity.setEndereco(rs.getString("endereco"));
                entity.setCidade(rs.getString("cidade"));
                entity.setBairro(rs.getString("bairro"));
                entity.setCep(rs.getString("cep"));
                entity.setComentario(rs.getString("comentario"));
                
                for (Aprovacao a : Aprovacao.values()) {
                    if (a.valor.equals(rs.getString("aprovado"))) {
                        entity.setAprovado(a);
                    }
                }

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
    
    public List<Aluno> findByAprovacao(Aprovacao aprovacao) {
        String query = "SELECT * FROM " + tableName + " WHERE aprovado = ?";
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Aluno> list = new ArrayList<>();

        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, aprovacao.valor);
            rs = ps.executeQuery();
            Aluno entity;

            while (rs.next()) {
                entity = new Aluno();
                entity.setId(rs.getLong("id"));
                entity.setLogin(rs.getString("login"));
                entity.setNome(rs.getString("nome"));
                entity.setSenha(rs.getString("senha"));
                entity.setCpf(rs.getString("cpf"));
                entity.setEmail(rs.getString("email"));
                entity.setCelular(rs.getString("celular"));
                entity.setEndereco(rs.getString("endereco"));
                entity.setCidade(rs.getString("cidade"));
                entity.setBairro(rs.getString("bairro"));
                entity.setCep(rs.getString("cep"));
                entity.setComentario(rs.getString("comentario"));
                entity.setAprovado(aprovacao);

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
