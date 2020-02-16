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
import model.Aluno;
import model.Usuario;

@WebServlet("/aluno/matriculas")
public class MatriculasController extends HttpServlet {

    MatriculaDAO dao = new MatriculaDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Usuario user = (Usuario) req.getSession().getAttribute("user");
        req.setAttribute("matriculas", dao.findByAlunoId(user.getId()));
        
        req.getRequestDispatcher("/WEB-INF/aluno/matriculas.jsp").forward(req, resp);
    }

}
