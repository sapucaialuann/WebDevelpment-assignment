package controller;

import dao.AlunoDAO;
import model.Aluno;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Comparator;
import java.util.stream.Collectors;

@WebServlet("/comentarios")
public class ComentariosController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        AlunoDAO dao = new AlunoDAO();

        req.setAttribute("alunos", dao.findAll().stream().filter(aluno -> aluno.getComentario() != null)
                .sorted(Comparator.comparingLong(Aluno::getId).reversed()).limit(55)
                .collect(Collectors.toList()));
        req.getRequestDispatcher("/WEB-INF/comentarios.jsp").forward(req, resp);
    }

}
