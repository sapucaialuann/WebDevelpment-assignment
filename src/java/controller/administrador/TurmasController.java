package controller.administrador;

import dao.CursoDAO;
import dao.InstrutorDAO;
import dao.TurmaDAO;
import model.Turma;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@WebServlet("/administrador/turmas")
public class TurmasController extends HttpServlet {

    TurmaDAO dao = new TurmaDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("turmas", dao.findAll());
        req.getRequestDispatcher("/WEB-INF/administrador/turmas.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CursoDAO cursoDao = new CursoDAO();
        InstrutorDAO instrutorDao = new InstrutorDAO();
        String param = req.getParameter("operacao");

        if (param != null) {
            Long id = Long.valueOf(req.getParameter("id"));
            boolean result;

            if ("remover".equals(param)) {
                result = dao.delete(id);
            } else {
                Turma turma = new Turma();

                turma.setId(id);
                turma.setDataInicio(new Date(req.getParameter("data_inicio")));
                turma.setDataFinal(new Date(req.getParameter("data_final")));
                turma.setCurso(cursoDao.findById(Long.valueOf(req.getParameter("curso_id"))).get());
                turma.setCargaHoraria(Short.valueOf(req.getParameter("carga_horaria")));
                turma.setInstrutor(instrutorDao.findById(Long.valueOf(req.getParameter("instrutor_id"))).get());

                result = dao.saveOrUpdate(turma);
            }

            if (result) {
                req.setAttribute("mensagem", "Operação realizada com sucesso");
            } else {
                req.setAttribute("mensagem", "Erro ao realizar a operação");
            }
        }

        req.setAttribute("turmas", dao.findAll());
        req.getRequestDispatcher("/WEB-INF/administrador/turmas.jsp").forward(req, resp);
    }

}
