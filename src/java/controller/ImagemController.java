package controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import javax.imageio.ImageIO;

@WebServlet("/imagem")
public class ImagemController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fileName = request.getParameter("filename");
        String type = request.getParameter("type");
        
        File file = new File(System.getProperty("user.home") + File.separator + "lerolero"
                                + File.separator + "img" + File.separator + type + File.separator
                                + fileName);
        response.setContentType("image/jpeg");
        response.setHeader("Content-Length", String.valueOf(file.length()));
        response.setHeader("Content-Disposition",
                new StringBuilder("inline; filename=").append(fileName).toString());

        FileInputStream in = new FileInputStream(file);
        OutputStream out = response.getOutputStream();

        byte[] buf = new byte[1024];

        for (int count = 0; count >= 0; count = in.read(buf)) {
            out.write(buf, 0, count);
        }

        in.close();
        out.close();
    }

}
