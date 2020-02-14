package controller.administrador;

import dao.CursoDAO;
import model.Curso;

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
        req.setAttribute("cursos", dao.findAll());
        req.getRequestDispatcher("/WEB-INF/administrador/cursos.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String param = req.getParameter("operacao");

        if (param != null) {
            Long id = Long.valueOf(req.getParameter("id"));
            boolean result;

            if ("remover".equals(param)) {
                result = dao.delete(id);
            } else {
                Curso curso = new Curso();

                curso.setId(id);
                curso.setValor(Double.valueOf(req.getParameter("valor")));
                curso.setCargaHoraria(Short.valueOf(req.getParameter("carga_horaria")));
                curso.setEmenta(req.getParameter("ementa"));
                curso.setNome(req.getParameter("nome"));
                curso.setRequisito(req.getParameter("requisito"));

                result = dao.saveOrUpdate(curso);
            }

            if (result) {
                req.setAttribute("mensagem", "Operação realizada com sucesso");
            } else {
                req.setAttribute("mensagem", "Erro ao realizar a operação");
            }
        }

        req.setAttribute("cursos", dao.findAll());
        req.getRequestDispatcher("/WEB-INF/administrador/cursos.jsp").forward(req, resp);
    }

}
