package controller;

import dao.AdministradorDAO;
import dao.AlunoDAO;
import dao.InstrutorDAO;
import dao.LoginDAO;
import enums.TipoUsuario;
import model.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Optional;

@WebServlet("/login")
public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String login = req.getParameter("login");
        String senha = req.getParameter("senha");
        String tipo = req.getParameter("tipo");

        if (login != null && senha != null && tipo != null) {
            LoginDAO<?> dao;

            if (tipo.equals(TipoUsuario.ADMIN.tipo)) {
                dao = new AdministradorDAO();
            } else if (tipo.equals(TipoUsuario.INSTRUTOR.tipo)) {
                dao = new InstrutorDAO();
            } else if (tipo.equals(TipoUsuario.ALUNO.tipo)) {
                dao = new AlunoDAO();
            } else {
                req.getRequestDispatcher("/WEB-INF/login.jsp").forward(req, resp);

                return;
            }

            Optional<Usuario> user = dao.login(login, senha);

            if (user.isPresent()) {
                req.getSession().setAttribute("user", user.get());
                resp.sendRedirect("/");

                return;
            }
        }

        req.getRequestDispatcher("/WEB-INF/login.jsp").forward(req, resp);
    }

}
