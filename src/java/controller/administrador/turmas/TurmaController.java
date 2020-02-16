package controller.administrador.turmas;

import controller.administrador.cursos.*;
import dao.CursoDAO;
import dao.InstrutorDAO;
import dao.TurmaDAO;
import model.Curso;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import model.Turma;

@WebServlet("/administrador/turma")
public class TurmaController extends HttpServlet {

    TurmaDAO dao = new TurmaDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String param = req.getParameter("id");

        if (param != null) {
            Long id = Long.valueOf(param);
            dao.findById(id).ifPresent(t -> {
                req.setAttribute("turma", t);
            });
        }

        req.getRequestDispatcher("/WEB-INF/administrador/turma.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String param = req.getParameter("id");
        Turma t = new Turma();
        CursoDAO cursoDao = new CursoDAO();
        InstrutorDAO instrutorDao = new InstrutorDAO();

        if (param != null) {
            t.setId(Long.valueOf(param));
        }

        t.setCurso(cursoDao.findById(Long.valueOf(req.getParameter("curso-id"))).get());
        t.setInstrutor(instrutorDao.findById(Long.valueOf(req.getParameter("instrutor-id"))).get());

        SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");

        try {
            if (req.getParameter("data-inicio") != null && !req.getParameter("data-inicio").isEmpty()) {
                t.setDataInicio(format.parse(req.getParameter("data-inicio")));
            }

            if (req.getParameter("data-final") != null && !req.getParameter("data-final").isEmpty()) {
                t.setDataFinal(format.parse(req.getParameter("data-final")));
            }
        } catch (ParseException e) {
            e.printStackTrace();
            resp.sendRedirect("/administrador/turma");
        }

        if (req.getParameter("carga-horaria") != null && !req.getParameter("carga-horaria").isEmpty()) {
            t.setCargaHoraria(Short.valueOf(req.getParameter("carga-horaria")));
        }

        dao.saveOrUpdate(t);
        resp.sendRedirect("/administrador/turmas");
    }

}
