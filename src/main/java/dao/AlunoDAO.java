package dao;

import dao.base.LoginDAO;
import enums.Aprovacao;
import enums.TipoUsuario;
import model.Administrador;
import model.Aluno;
import model.base.Usuario;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
        StringBuilder queryBuilder = new StringBuilder();

        if (entity.getId() == null) {
            queryBuilder.append("INSERT INTO ").append(tableName)
                    .append("(nome, login, senha, cpf, email, celular, endereco, cidade, bairro, cep, comentario) VALUES ")
                    .append("(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
        } else {
            queryBuilder.append("UPDATE ").append(tableName)
                    .append(" SET nome = ?, login = ?, senha = ?, cpf = ?, email = ?, celular = ?, endereco = ?, cidade = ?, bairro = ?, cep = ?, comentario = ? WHERE id = ?");
        }

        try {
            PreparedStatement ps = conn.prepareStatement(queryBuilder.toString());
            ps.setString(1, entity.getNome());
            ps.setString(2, entity.getLogin());
            ps.setString(3, entity.hashPassword());
            ps.setString(4, entity.getCpf());
            ps.setString(5, entity.getEmail());
            ps.setString(6, entity.getCelular());
            ps.setString(7, entity.getEndereco());
            ps.setString(8, entity.getCidade());
            ps.setString(9, entity.getBairro());
            ps.setString(10, entity.getCep());
            ps.setString(11, entity.getComentario());

            if (entity.getId() != null) {
                ps.setLong(12, entity.getId());
            }

            ps.execute();

            return true;
        } catch (SQLException e) {
            e.printStackTrace();

            return false;
        }
    }

    @Override
    public Optional<Aluno> findById(Long id) {
        Aluno entity = new Aluno();
        StringBuilder queryBuilder = new StringBuilder("SELECT * FROM ").append(tableName).append(" WHERE id = ?");

        try {
            PreparedStatement ps = conn.prepareStatement(queryBuilder.toString());
            ps.setLong(1, id);

            ResultSet rs = ps.executeQuery();

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
                entity.setAprovado(Aprovacao.valueOf(rs.getString("aprovacao").toUpperCase()));

                return Optional.of(entity);
            } else {
                return Optional.empty();
            }

        } catch (SQLException e) {
            e.printStackTrace();

            return Optional.empty();
        }
    }

    @Override
    public List<Aluno> findAll() {
        List<Aluno> list = new ArrayList<>();
        StringBuilder queryBuilder = new StringBuilder("SELECT * FROM ").append(tableName);

        try {
            PreparedStatement ps = conn.prepareStatement(queryBuilder.toString());
            ResultSet rs = ps.executeQuery();
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
                entity.setAprovado(Aprovacao.valueOf(rs.getString("aprovacao").toUpperCase()));

                list.add(entity);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

    public List<Aluno> findByAprovacaoNegada() {
        List<Aluno> list = new ArrayList<>();
        StringBuilder queryBuilder = new StringBuilder("SELECT * FROM ").append(tableName)
                .append(" WHERE aprovacao = ?");

        try {
            PreparedStatement ps = conn.prepareStatement(queryBuilder.toString());
            ps.setString(1, Aprovacao.REPROVADO.valor);
            ResultSet rs = ps.executeQuery();
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
                entity.setAprovado(Aprovacao.valueOf(rs.getString("aprovacao").toUpperCase()));

                list.add(entity);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

}
