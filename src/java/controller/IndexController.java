package controller;

import dao.CursoDAO;
import dao.TurmaDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Comparator;
import java.util.stream.Collectors;
import model.Curso;
import model.Turma;

public class IndexController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CursoDAO cursoDAO = new CursoDAO();
        TurmaDAO turmaDAO = new TurmaDAO();

        req.setAttribute("cursos",cursoDAO.findAll().stream()
                .sorted(Comparator.comparingLong(Curso::getId).reversed()).limit(3)
                .collect(Collectors.toList()));
        req.setAttribute("turmas", turmaDAO.findAll().stream()
                .filter(c -> c.getDataFinal() == null || c.getDataFinal().getTime() < System.currentTimeMillis())
                .sorted(Comparator.comparingLong(Turma::getId).reversed()).limit(3)
                .collect(Collectors.toList()));
        req.getRequestDispatcher("/WEB-INF/index.jsp").forward(req, resp);
    }

}
