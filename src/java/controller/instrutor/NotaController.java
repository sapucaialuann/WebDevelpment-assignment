package controller.instrutor;

import dao.MatriculaDAO;
import dao.TurmaDAO;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Matricula;
import model.Turma;
import model.Usuario;

@WebServlet("/instrutor/nota")
public class NotaController extends HttpServlet {
    
    MatriculaDAO dao = new MatriculaDAO();
    TurmaDAO turmaDao = new TurmaDAO();
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.processRequest(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("id"));
        Double nota = Double.valueOf(req.getParameter("nota"));
        Matricula m = dao.findById(id).get();
        m.setNota(nota);
        dao.saveOrUpdate(m);
        
        this.processRequest(req, resp);
    }
    
    private void processRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Usuario u = (Usuario) req.getSession().getAttribute("user");
        List<Turma> turmas = turmaDao.findByInstrutorId(u.getId());
        Map<Turma, List<Matricula>> map = new HashMap<>();
        
        turmas.forEach(t -> {
            map.put(t, dao.findByTurmaId(t.getId()));
        });
        
        req.setAttribute("map", map);
        
        req.getRequestDispatcher("/WEB-INF/instrutor/nota.jsp").forward(req, resp);
    }
    
}
