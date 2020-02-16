package controller.instrutor;

import controller.aluno.*;
import dao.AlunoDAO;
import dao.InstrutorDAO;
import enums.Aprovacao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import model.Aluno;
import model.Instrutor;
import model.Usuario;

@WebServlet("/instrutor/dados")
public class DadosController extends HttpServlet {

    InstrutorDAO dao = new InstrutorDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Usuario user = (Usuario) req.getSession().getAttribute("user");
        req.setAttribute("instrutor", dao.findById(user.getId()).get());

        req.getRequestDispatcher("/WEB-INF/instrutor/dados.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Usuario user = (Usuario) req.getSession().getAttribute("user");
        Instrutor i = new Instrutor();

        i.setId(user.getId());
        i.setNome(req.getParameter("nome"));
        i.setExperiencia(req.getParameter("experiencia"));
        i.setEmail(req.getParameter("email"));
        i.setSenha(req.getParameter("senha"));
        i.setLogin(req.getParameter("login"));

        dao.saveOrUpdate(i);
        req.setAttribute("instrutor", dao.findById(user.getId()));

        resp.sendRedirect("/instrutor/dados");
    }

}
