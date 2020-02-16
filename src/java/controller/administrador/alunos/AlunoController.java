package controller.administrador.alunos;

import dao.AlunoDAO;
import enums.Aprovacao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import model.Aluno;

@WebServlet("/administrador/aluno")
public class AlunoController extends HttpServlet {

    AlunoDAO dao = new AlunoDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String param = req.getParameter("id");

        if (param != null) {
            Long id = Long.valueOf(param);
            dao.findById(id).ifPresent(a -> {
                req.setAttribute("aluno", a);
            });
        }
        
        req.getRequestDispatcher("/WEB-INF/administrador/aluno.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String param = req.getParameter("id");
        Aluno a = new Aluno();

        if (param != null) {
            a.setId(Long.valueOf(param));
        }

        a.setNome(req.getParameter("nome"));
        a.setLogin(req.getParameter("login"));
        a.setSenha(req.getParameter("senha"));
        a.setCpf(req.getParameter("cpf"));
        a.setEmail(req.getParameter("email"));
        a.setCelular(req.getParameter("celular"));
        a.setEndereco(req.getParameter("endereco"));
        a.setCidade(req.getParameter("cidade"));
        a.setBairro(req.getParameter("bairro"));
        a.setCep(req.getParameter("cep"));
        a.setComentario(req.getParameter("comentario"));
        a.setAprovado(Aprovacao.APROVADO);

        dao.saveOrUpdate(a);
        resp.sendRedirect("/administrador/alunos");
    }

}
