package controller.administrador.turmas;

import controller.administrador.cursos.*;
import dao.CursoDAO;
import dao.MatriculaDAO;
import dao.TurmaDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/administrador/notas")
public class NotasController extends HttpServlet {

    MatriculaDAO dao = new MatriculaDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("id"));
        
        req.setAttribute("matriculas", dao.findByTurmaId(id));
        req.getRequestDispatcher("/WEB-INF/administrador/notas.jsp").forward(req, resp);
    }

}
