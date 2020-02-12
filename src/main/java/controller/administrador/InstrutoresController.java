package controller.administrador;

import dao.InstrutorDAO;
import model.Curso;
import model.Instrutor;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/administrador/instrutores")
public class InstrutoresController extends HttpServlet {

    InstrutorDAO dao = new InstrutorDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("instrutores", dao.findAll());
        req.getRequestDispatcher("/WEB-INF/administrador/instrutores.jsp").forward(req, resp);
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
                Instrutor instrutor = new Instrutor();

                instrutor.setId(id);
                instrutor.setValorHora(Integer.parseInt(req.getParameter("valor_hora")));
                instrutor.setExperiencia(req.getParameter("experiencia"));
                instrutor.setEmail(req.getParameter("email"));
                instrutor.setSenha(req.getParameter("senha"));
                instrutor.setLogin(req.getParameter("login"));
                instrutor.hashPassword();

                result = dao.saveOrUpdate(instrutor);
            }

            if (result) {
                req.setAttribute("mensagem", "Operação realizada com sucesso");
            } else {
                req.setAttribute("mensagem", "Erro ao realizar a operação");
            }
        }

        req.setAttribute("instrutores", dao.findAll());
        req.getRequestDispatcher("/WEB-INF/administrador/instrutores.jsp").forward(req, resp);
    }

}
