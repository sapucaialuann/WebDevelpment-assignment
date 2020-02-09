package filter;

import enums.TipoUsuario;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter({"/aluno", "/instrutor", "/admin"})
public class AccessFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        HttpSession session = req.getSession(false);

        if (session == null) {
            resp.sendRedirect("/index.jsp");
        }

        TipoUsuario tipo = (TipoUsuario) session.getAttribute("tipo");

        if (!tipo.equals(TipoUsuario.ADMIN)) {
            if (req.getRequestURI().contains("instrutor") && !tipo.equals(TipoUsuario.INSTRUTOR) || req.getRequestURI()
                    .contains("aluno") && !tipo.equals(TipoUsuario.ALUNO)) {
                resp.sendRedirect("index.jsp");
            }
        }

        chain.doFilter(request, response);
    }

}
