package controller;

import dao.InstrutorDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/instrutores")
public class InstrutoresController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        InstrutorDAO dao = new InstrutorDAO();

        req.setAttribute("instrutores", dao.findAll());
        req.getRequestDispatcher("/WEB-INF/instrutores.jsp").forward(req, resp);
    }

}
