package controller.aluno;

import dao.AlunoDAO;
import dao.MatriculaDAO;
import dao.TurmaDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import model.Aluno;
import model.Matricula;
import model.Turma;
import model.Usuario;

@WebServlet("/aluno/matricula")
public class MatriculaController extends HttpServlet {

    MatriculaDAO dao = new MatriculaDAO();
    TurmaDAO turmaDao = new TurmaDAO();
    AlunoDAO alunoDao = new AlunoDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Usuario user = (Usuario) req.getSession().getAttribute("user");
        
        if (req.getParameter("id") != null) {
            Matricula m = new Matricula();
            m.setTurma(turmaDao.findById(Long.valueOf(req.getParameter("id"))).get());
            m.setAluno(alunoDao.findById(user.getId()).get());
            m.setDataMatricula(new Date());
            dao.saveOrUpdate(m);
        }
        
        req.setAttribute("turmas", turmaDao.findByNotAlunoId(user.getId()));
        
        req.getRequestDispatcher("/WEB-INF/aluno/matricula.jsp").forward(req, resp);
    }

}
