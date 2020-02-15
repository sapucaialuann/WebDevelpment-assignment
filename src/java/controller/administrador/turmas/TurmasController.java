package controller.administrador.turmas;

import controller.administrador.cursos.*;
import dao.CursoDAO;
import dao.TurmaDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/administrador/turmas")
public class TurmasController extends HttpServlet {

    TurmaDAO dao = new TurmaDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String param = req.getParameter("id");

        if (param != null) {
            Long id = Long.valueOf(req.getParameter("id"));
            dao.delete(id);
        }
        
        req.setAttribute("turmas", dao.findAll());
        req.getRequestDispatcher("/WEB-INF/administrador/turmas.jsp").forward(req, resp);
    }

}
