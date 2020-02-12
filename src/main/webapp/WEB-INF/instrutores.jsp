<%@ page import="model.Usuario" %>
<%@ page import="enums.TipoUsuario" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<% Usuario user = (Usuario) request.getSession().getAttribute("user");%>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="../assets/css/reset.css">
    <link rel="stylesheet" type="text/css" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/bootstrap/css/bootstrap-grid.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/instrutores.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/index.css">
    <title>Curso Lero Lero</title>
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

    <main>
        <div class="container">
            <div class="row">
                <div class="card" style="width: 18rem;">
                    <img src="../assets/img/ronaldinho.jpg " class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Nome</h5>
                        <p class="card-text">Email: xxx@xxx.xxx</p>
                        <p class="card-text">Valor/hora: R$ xx,xx</p>
                    </div>
                </div>
                <div class="card" style="width: 18rem;">
                    <img src="../assets/img/ronaldinho.jpg " class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Nome</h5>
                        <p class="card-text">Email: xxx@xxx.xxx</p>
                        <p class="card-text">Valor/hora: R$ xx,xx</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="card" style="width: 18rem;">
                    <img src="../assets/img/ronaldinho.jpg " class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Nome</h5>
                        <p class="card-text">Email: xxx@xxx.xxx</p>
                        <p class="card-text">Valor/hora: R$ xx,xx</p>
                    </div>
                </div>
                <div class="card" style="width: 18rem;">
                    <img src="../assets/img/ronaldinho.jpg " class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Nome</h5>
                        <p class="card-text">Email: xxx@xxx.xxx</p>
                        <p class="card-text">Valor/hora: R$ xx,xx</p>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <footer class="bg-secondary mt-3">
        <p class="mt-3 mb-1 text-center text-white">Feito por Luann Sapucaia e Felipe Matheus</p>
        <p class="font-italic mb-2 text-center text-white">&copy;Copyrights </p>
    </footer>

    <script type="text/javascript" src="../assets/js/jquery.js"></script>
    <script type="text/javascript" src="https://unpkg.com/@popperjs/core@2.0.0"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="../assets/js/locastyle.js"></script>
</body>

</html>