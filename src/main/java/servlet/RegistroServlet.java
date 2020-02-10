package servlet;

import dao.AlunoDAO;
import model.Aluno;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

@WebServlet("/registro")
public class RegistroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Aluno aluno = new Aluno();
        AlunoDAO dao = new AlunoDAO();

        aluno.setNome(req.getParameter("nome"));
        aluno.setLogin(req.getParameter("login"));
        aluno.setSenha(req.getParameter("senha"));
        aluno.setCpf(req.getParameter("cpf"));
        aluno.setEmail(req.getParameter("email"));
        aluno.setCelular(req.getParameter("celular"));
        aluno.setEndereco(req.getParameter("endereco"));
        aluno.setCidade(req.getParameter("cidade"));
        aluno.setBairro(req.getParameter("bairro"));
        aluno.setCep(req.getParameter("cep"));
        aluno.setComentario(req.getParameter("comentario"));

        try (PrintWriter out = resp.getWriter()) {
            if (dao.saveOrUpdate(aluno)) {
                out.println("Aluno salvo com sucesso");

            } else {
                out.println("Aluno não pode ser salvo");
            }

            resp.setHeader("Refresh", "3; url=index.jsp");
        }
    }

}
