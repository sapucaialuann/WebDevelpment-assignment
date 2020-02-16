package controller.aluno;

import controller.administrador.alunos.*;
import dao.AlunoDAO;
import java.io.File;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import model.Usuario;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet("/aluno/foto")
public class FotoController extends HttpServlet {

    AlunoDAO dao = new AlunoDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Usuario u = (Usuario) req.getSession().getAttribute("user");
        req.setAttribute("id", u.getId());
        req.getRequestDispatcher("/WEB-INF/aluno/foto.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Usuario u = (Usuario) req.getSession().getAttribute("user");

        if (ServletFileUpload.isMultipartContent(req)) {
            try {
                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(req);

                for (FileItem item : multiparts) {
                    if (!item.isFormField()) {
                        String path = System.getProperty("user.home") + File.separator + "lerolero"
                                + File.separator + "img" + File.separator + "alunos" + File.separator;
                        File folder = new File(path);
                        folder.mkdirs();
                        File file = new File(path, u.getId() + ".jpg");
                        file.delete();
                        item.write(file);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }

        }
        
        req.setAttribute("id", u.getId());

        req.getRequestDispatcher("/WEB-INF/aluno/foto.jsp").forward(req, resp);
    }

}
