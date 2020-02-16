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

@WebServlet("/administrador/instrutor")
public class InstrutorController extends HttpServlet {

    InstrutorDAO dao = new InstrutorDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String param = req.getParameter("id");

        if (param != null) {
            Long id = Long.valueOf(param);
            dao.findById(id).ifPresent(i -> {
                req.setAttribute("instrutor", i);
            });
        }

        req.getRequestDispatcher("/WEB-INF/administrador/instrutor.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String param = req.getParameter("id");
        Instrutor i = new Instrutor();

        if (param != null) {
            i.setId(Long.valueOf(param));
        }
        
        if (req.getParameter("valor-hora") != null & !req.getParameter("valor-hora").isEmpty()) {
            i.setValorHora(Integer.parseInt(req.getParameter("valor-hora")));
        }

        i.setNome(req.getParameter("nome"));
        i.setExperiencia(req.getParameter("experiencia"));
        i.setEmail(req.getParameter("email"));
        i.setSenha(req.getParameter("senha"));
        i.setLogin(req.getParameter("login"));
        
        dao.saveOrUpdate(i);
        resp.sendRedirect("/administrador/instrutores");
    }

}
