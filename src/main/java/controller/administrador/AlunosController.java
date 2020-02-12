package controller.administrador;

import dao.AlunoDAO;
import dao.DAO;
import model.Aluno;

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
        req.setAttribute("alunos", dao.findAll());
        req.getRequestDispatcher("/WEB-INF/administrador/alunos.jsp").forward(req, resp);
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
                Aluno aluno = new Aluno();

                aluno.setId(id);
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

                result = dao.saveOrUpdate(aluno);
            }

            if (result) {
                req.setAttribute("mensagem", "Operação realizada com sucesso");
            } else {
                req.setAttribute("mensagem", "Erro ao realizar a operação");
            }
        }

        req.setAttribute("alunos", dao.findAll());
        req.getRequestDispatcher("/WEB-INF/administrador/alunos.jsp").forward(req, resp);
    }
}
