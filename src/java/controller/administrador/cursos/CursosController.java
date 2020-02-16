package controller.administrador.cursos;

import dao.CursoDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/administrador/cursos")
public class CursosController extends HttpServlet {

    CursoDAO dao = new CursoDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String param = req.getParameter("id");

        if (param != null) {
            Long id = Long.valueOf(req.getParameter("id"));
            dao.delete(id);
        }
        
        req.setAttribute("cursos", dao.findAll());
        req.getRequestDispatcher("/WEB-INF/administrador/cursos.jsp").forward(req, resp);
    }

}
