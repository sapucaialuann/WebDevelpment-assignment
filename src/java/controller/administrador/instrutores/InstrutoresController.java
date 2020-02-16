package controller.administrador.instrutores;

import dao.InstrutorDAO;
import model.Curso;
import model.Instrutor;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/administrador/instrutores")
public class InstrutoresController extends HttpServlet {

    InstrutorDAO dao = new InstrutorDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String param = req.getParameter("id");

        if (param != null) {
            Long id = Long.valueOf(req.getParameter("id"));
            dao.delete(id);
        }
        
        req.setAttribute("instrutores", dao.findAll());
        req.getRequestDispatcher("/WEB-INF/administrador/instrutores.jsp").forward(req, resp);
    }

    

}
