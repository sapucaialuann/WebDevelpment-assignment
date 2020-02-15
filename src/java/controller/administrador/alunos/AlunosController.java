package controller.administrador.alunos;

import controller.administrador.instrutores.*;
import dao.AlunoDAO;
import dao.InstrutorDAO;
import enums.Aprovacao;
import model.Curso;
import model.Instrutor;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/administrador/alunos")
public class AlunosController extends HttpServlet {

    AlunoDAO dao = new AlunoDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String param = req.getParameter("id");

        if (param != null) {
            Long id = Long.valueOf(req.getParameter("id"));
            dao.delete(id);
        }
        
        req.setAttribute("alunos", dao.findByAprovacao(Aprovacao.APROVADO));
        req.getRequestDispatcher("/WEB-INF/administrador/alunos.jsp").forward(req, resp);
    }

}
