package filter;

import enums.TipoUsuario;
import model.base.Usuario;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter({"/aluno.jsp", "/instrutor.jsp", "/admin.jsp"})
public class AccessFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        HttpSession session = req.getSession();
        Usuario user = (Usuario) session.getAttribute("user");

        if (user == null) {
            resp.sendRedirect("/index.jsp");
        } else if (!this.hasAccess(user.getTipo(), req)) {
            resp.sendRedirect("index.jsp");
        }

        chain.doFilter(request, response);
    }

    private boolean hasAccess(TipoUsuario tipo, HttpServletRequest req) {
        return tipo.equals(TipoUsuario.ADMIN) ||
                req.getRequestURI().contains("instrutor") && tipo.equals(TipoUsuario.INSTRUTOR) ||
                req.getRequestURI().contains("aluno") && tipo.equals(TipoUsuario.ALUNO);
    }

}
