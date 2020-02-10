package servlet;

import dao.AdministradorDAO;
import dao.AlunoDAO;
import dao.InstrutorDAO;
import dao.base.LoginDAO;
import enums.TipoUsuario;
import model.base.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Optional;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String login = req.getParameter("login");
        String senha = req.getParameter("senha");
        String tipo = req.getParameter("tipo");

        try (PrintWriter out = resp.getWriter()) {
            if (login != null && senha != null && tipo != null) {
                LoginDAO<?> dao;

                if (tipo.equals(TipoUsuario.ADMIN.tipo)) {
                    dao = new AdministradorDAO();
                } else if (tipo.equals(TipoUsuario.INSTRUTOR.tipo)) {
                    dao = new InstrutorDAO();
                } else if (tipo.equals(TipoUsuario.ALUNO.tipo)) {
                    dao = new AlunoDAO();
                } else {
                    out.println("Não há outra opção de login");
                    resp.setHeader("Refresh", "3; url=login.jsp");

                    return;
                }

                Optional<Usuario> user = dao.login(login, senha);

                if (user.isPresent()) {
                    HttpSession session = req.getSession();
                    session.setAttribute("user", user.get());

                    resp.sendRedirect("/index.jsp");
                } else {
                    out.println("Login ou senha incorretos");
                    resp.setHeader("Refresh", "3; url=login.jsp");
                }

            } else {
                out.println("Os parâmetros requeridos não foram passados");
                resp.setHeader("Refresh", "3; url=login.jsp");
            }
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().invalidate();
        resp.sendRedirect("/login.jsp");
    }

}
