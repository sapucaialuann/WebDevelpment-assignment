<%@ page import="model.Usuario" %>
<%@ page import="enums.TipoUsuario" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<% Usuario user = (Usuario) request.getSession().getAttribute("user");%>
<html>
<head>
    <title>Cursos Lero Lero</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="stylesheet" type="text/css" href="../assets/css/reset.css">
    <link rel="stylesheet" type="text/css" href="../assets/bootstrap/css/bootstrap-grid.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/index.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/comments.css">


</head>

<body>

    <header class="navbar navbar-expand-lg navbar-light bg-light header-home">
        <a class="navbar-brand" href="index"><img src="../assets/img/lerolerologo.png"
                                                  alt="Logo da empresa Lero Lero"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto justify-content-end">
                <li class="nav-item"><a class="nav-link" href="sobre">Sobre</a></li>
                <li class="nav-item"><a class="nav-link" href="instrutores">Instrutores</a></li>
                <li class="nav-item"><a class="nav-link" href="comentarios">Comentários</a></li>
                <li class="nav-item"><a class="nav-link" href="registro">Registro</a></li>
                <% if (user == null ) { %>
                    <li class="nav-item"><a class="nav-link" href="login">Login</a></li>
                <% } else { %>
                    <% TipoUsuario tipo = user.getTipo();
                    if (tipo.equals(TipoUsuario.ADMIN)) {%>
                        <li class="nav-item"><a class="nav-link" href="administrador/crud">Área restrita</a></li>
                    <%} else if (tipo.equals(TipoUsuario.INSTRUTOR)) { %>
                        <li class="nav-item"><a class="nav-link" href="instrutor">Área do instrutor</a></li>
                    <%} else if (tipo.equals(TipoUsuario.ALUNO)) { %>
                        <li class="nav-item"><a class="nav-link" href="aluno">Área do aluno</a></li>
                    <%} %>
                    <li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
                <% } %>
            </ul>
        </div>
    </header>

    <div class="media">
        <img src="../assets/img/ronaldinho.jpg" class="mr-3" alt="...">
        <div class="media-body">
            <h5 class="mt-0">Media heading</h5>
            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio,
            vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec
            lacinia congue felis in faucibus.
        </div>
    </div>

    <footer class="bg-secondary mt-3 fixed-bottom">
        <p class="mt-3 mb-1 text-center text-white">Feito por Luann Sapucaia e Felipe Matheus</p>
        <p class="font-italic mb-2 text-center text-white">&copy;Copyrights </p>
    </footer>

    <script type="text/javascript" src="../assets/js/jquery.js"></script>
    <script type="text/javascript" src="https://unpkg.com/@popperjs/core@2.0.0"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap.bundle.min.js"></script>


</body>

</html>
