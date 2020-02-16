package controller.instrutor;

import controller.aluno.*;
import dao.AlunoDAO;
import dao.InstrutorDAO;
import dao.TurmaDAO;
import enums.Aprovacao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;
import model.Aluno;
import model.Instrutor;
import model.Turma;
import model.Usuario;

@WebServlet("/instrutor/valor-total")
public class ValorTotalController extends HttpServlet {

    InstrutorDAO dao = new InstrutorDAO();
    TurmaDAO turmaDao = new TurmaDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Usuario user = (Usuario) req.getSession().getAttribute("user");
        Instrutor i = dao.findById(user.getId()).get();

        if (i.getValorHora() == null) {
            req.setAttribute("valorTotal", 0);
        } else {
            int valorTotal = turmaDao.findByInstrutorId(user.getId()).stream()
                    .filter(t -> t.getCargaHoraria() != null)
                    .map(Turma::getCargaHoraria)
                    .map(Short::intValue)
                    .reduce(0, (a, b) -> a + b);
            req.setAttribute("valorTotal", valorTotal * i.getValorHora());
        }

        req.getRequestDispatcher("/WEB-INF/instrutor/valor-total.jsp").forward(req, resp);
    }

}
