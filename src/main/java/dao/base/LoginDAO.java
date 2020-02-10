package dao.base;

import enums.TipoUsuario;
import model.base.Usuario;
import org.mindrot.jbcrypt.BCrypt;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Optional;

public abstract class LoginDAO<T extends Usuario> extends DAO<T> {

    protected LoginDAO(String tableName) {
        super(tableName);
    }

    public abstract Optional<Usuario> login(String login, String password);

    protected Optional<Usuario> login(String login, String password, TipoUsuario tipo) {
        StringBuilder queryBuilder = new StringBuilder().append("SELECT * FROM ").append(tableName)
                .append(" e WHERE e.login = ?");

        try {
            PreparedStatement ps = conn.prepareStatement(queryBuilder.toString());
            ps.setString(1, login);

            ResultSet rs = ps.executeQuery();

            if (rs.next() && BCrypt.checkpw(password, rs.getString("senha"))) {
                Usuario user = new Usuario();
                user.setId(rs.getLong("id"));
                user.setNome(rs.getString("nome"));
                user.setLogin(rs.getString("login"));
                user.setTipo(tipo);

                return Optional.of(user);
            }

            return Optional.empty();
        } catch (SQLException e) {
            e.printStackTrace();

            return Optional.empty();
        }
    }

}
