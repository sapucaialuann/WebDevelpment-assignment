<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.Usuario" %>
<%@ page import="enums.TipoUsuario" %>
<header class="navbar navbar-expand-lg navbar-light bg-light header-home">
    <a class="navbar-brand" href="/index"><img src="../../assets/img/lerolerologo.png"
                                               alt="Logo da empresa Lero Lero"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto justify-content-end">
            <li class="nav-item"><a class="nav-link" href="/sobre">Sobre</a></li>
            <li class="nav-item"><a class="nav-link" href="/instrutores">Instrutores</a></li>
            <li class="nav-item"><a class="nav-link" href="/comentarios">Comentários</a></li>
            <li class="nav-item"><a class="nav-link" href="/registro">Registro</a></li>
                <% Usuario user = (Usuario) request.getSession().getAttribute("user");
                if (user == null) { %>
            <li class="nav-item"><a class="nav-link" href="/login">Login</a></li>
                <% } else { %>
                <% TipoUsuario tipo = user.getTipo();
                if (tipo.equals(TipoUsuario.ADMIN)) {%>
            <li class="nav-item"><a class="nav-link" href="/administrador">Área restrita</a></li>
                <%} else if (tipo.equals(TipoUsuario.INSTRUTOR)) { %>
            <li class="nav-item"><a class="nav-link" href="/instrutor">Área do instrutor</a></li>
                <%} else if (tipo.equals(TipoUsuario.ALUNO)) { %>
            <li class="nav-item"><a class="nav-link" href="/aluno">Área do aluno</a></li>
                <%} %>
            <li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
                <% }%>
        </ul>
    </div>
</header>
