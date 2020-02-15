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
import model.Aluno;

@WebServlet("/administrador/aprovacao")
public class AprovacaoController extends HttpServlet {

    AlunoDAO dao = new AlunoDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String param = req.getParameter("id");
        String param2 = req.getParameter("op");

        if (param != null && param2 != null) {
            Long id = Long.valueOf(req.getParameter("id"));
            
            if (param2.equals("deletar")) {
                dao.delete(id);
            } else if (param2.equals("aprovar")) {
                Aluno a = dao.findById(id).get();
                a.setAprovado(Aprovacao.APROVADO);
                dao.saveOrUpdate(a);
            }
        }
        
        req.setAttribute("alunos", dao.findByAprovacao(Aprovacao.REPROVADO));
        req.getRequestDispatcher("/WEB-INF/administrador/aprovacao.jsp").forward(req, resp);
    }

}
