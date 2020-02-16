package controller.aluno;

import dao.AlunoDAO;
import enums.Aprovacao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import model.Aluno;
import model.Usuario;

@WebServlet("/aluno/comentario")
public class ComentarioController extends HttpServlet {

    AlunoDAO dao = new AlunoDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Usuario user = (Usuario) req.getSession().getAttribute("user");
        req.setAttribute("aluno", dao.findById(user.getId()).get());
        
        req.getRequestDispatcher("/WEB-INF/aluno/comentario.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Usuario user = (Usuario) req.getSession().getAttribute("user");
        Aluno a = dao.findById(user.getId()).get();
        a.setComentario(req.getParameter("comentario"));
        dao.saveOrUpdate(a);
        req.setAttribute("aluno", a);
        
        resp.sendRedirect("/aluno/comentario");
    }

}
