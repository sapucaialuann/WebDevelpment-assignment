package controller.administrador.cursos;

import dao.CursoDAO;
import model.Curso;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/administrador/curso")
public class CursoController extends HttpServlet {

    CursoDAO dao = new CursoDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String param = req.getParameter("id");

        if (param != null) {
            Long id = Long.valueOf(param);
            dao.findById(id).ifPresent(c -> {
                req.setAttribute("curso", c);
            });
        }

        req.getRequestDispatcher("/WEB-INF/administrador/curso.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String param = req.getParameter("id");
        Curso c = new Curso();

        if (param != null) {
            c.setId(Long.valueOf(param));
        }

        if (req.getParameter("preco") != null && !req.getParameter("preco").isEmpty()) {
            c.setPreco(Double.valueOf(req.getParameter("preco")));
        }

        if (req.getParameter("carga-horaria") != null && !req.getParameter("carga-horaria").isEmpty()) {
            c.setCargaHoraria(Short.valueOf(req.getParameter("carga-horaria")));
        }

        c.setEmenta(req.getParameter("ementa"));
        c.setNome(req.getParameter("nome"));
        c.setRequisito(req.getParameter("requisito"));

        dao.saveOrUpdate(c);
        resp.sendRedirect("/administrador/cursos");
    }

}
