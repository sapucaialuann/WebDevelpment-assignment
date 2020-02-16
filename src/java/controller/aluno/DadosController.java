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

@WebServlet("/aluno/dados")
public class DadosController extends HttpServlet {

    AlunoDAO dao = new AlunoDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Usuario user = (Usuario) req.getSession().getAttribute("user");
        req.setAttribute("aluno", dao.findById(user.getId()).get());
        
        req.getRequestDispatcher("/WEB-INF/aluno/dados.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Usuario user = (Usuario) req.getSession().getAttribute("user");
        Aluno a = new Aluno();

        a.setId(user.getId());
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

        dao.saveOrUpdate(a);
        req.setAttribute("aluno", dao.findById(user.getId()));
        
        resp.sendRedirect("/aluno/dados");
    }

}
