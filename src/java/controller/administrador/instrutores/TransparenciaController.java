package controller.administrador.instrutores;

import dao.TurmaDAO;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Instrutor;
import model.Turma;

@WebServlet("/instrutor/transparencia")
public class TransparenciaController extends HttpServlet {
    
    TurmaDAO turmaDao = new TurmaDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Turma> turmas = turmaDao.findAll();
        Set<Instrutor> instrutores = turmas.stream().map(Turma::getInstrutor).collect(Collectors.toSet());
        Map<Instrutor, List<Turma>> m = new HashMap<>();
        Map<Instrutor, Integer> m2 = new HashMap<>();
        
        instrutores.forEach((i) -> {
            List<Turma> turmasInstrutor = turmas.stream()
                    .filter(t -> t.getInstrutor().getId().equals(i.getId()))
                    .collect(Collectors.toList());
            
            if (i.getValorHora() == null) {
                m2.put(i, 0);
            } else {
                m2.put(i, turmasInstrutor.stream()
                    .filter(t -> t.getCargaHoraria() != null)
                    .map(Turma::getCargaHoraria)
                    .map(Short::intValue)
                    .reduce(0, (a, b) -> a + b));
            }
            
            m.put(i, turmasInstrutor);
        });
        
        req.setAttribute("map", m);
        req.setAttribute("map2", m2);
    }
    
}
