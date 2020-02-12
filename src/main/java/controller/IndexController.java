package controller;

import dao.CursoDAO;
import dao.TurmaDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class IndexController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CursoDAO cursoDAO = new CursoDAO();
        TurmaDAO turmaDAO = new TurmaDAO();

        req.setAttribute("cursos",cursoDAO.findAll());
        req.setAttribute("turmas", turmaDAO.findAll());
        req.getRequestDispatcher("/WEB-INF/index.jsp").forward(req, resp);
    }

}
