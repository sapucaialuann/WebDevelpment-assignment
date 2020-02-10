package filter;

import enums.TipoUsuario;
import model.base.Usuario;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/administrador/*")
public class AdministradorFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        HttpSession session = req.getSession();
        Usuario user = (Usuario) session.getAttribute("user");

        if (user == null || !user.getTipo().equals(TipoUsuario.ADMIN)) {
            resp.sendRedirect("/index.jsp");
        }

        chain.doFilter(request, response);
    }

}
