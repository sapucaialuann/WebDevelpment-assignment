<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="assets/css/reset.css">
    <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap-grid.css">
    <link rel="stylesheet" type="text/css" href="assets/css/register.css">
    <link rel="stylesheet" type="text/css" href="assets/css/login.css">
    <link rel="stylesheet" type="text/css" href="assets/css/index.css">
    <title>Curso Lero Lero</title>

</head>

<body>
    <header class="navbar navbar-expand-lg navbar-light bg-light header-home">
        <a class="navbar-brand" href="index.jsp"><img src="assets/img/lerolerologo.png"
                                                      alt="Logo da empresa Lero Lero"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto justify-content-end">
                <li class="nav-item"><a class="nav-link" href="sobre.jsp">Sobre</a></li>
                <li class="nav-item"><a class="nav-link" href="instrutores.jsp">Instrutores</a></li>
                <li class="nav-item"><a class="nav-link" href="comentarios.jsp">Comentários</a></li>
                <li class="nav-item"><a class="nav-link" href="cadastro.jsp">Registro</a></li>
                <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                <li class="nav-item"><a class="nav-link" href="administrador/registros.jsp">Tabelas</a></li>
            </ul>
        </div>
    </header>

    <main class="mt-5 mb-5 w-50 p-5 section-login">
        <form method="POST" action="login">
            <h2>Login</h2>
            <div class="form-group ">
                <label for="username">Login</label>
                <input type="text" name="login" id="username" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Senha</label>
                <input type="password" class="form-control" id="exampleInputPassword1" name="senha">
            </div>
            <div class="form-group">
                <label for="tipo">Tipo</label>
                <select id="tipo" name="tipo">
                    <option value="admin">Administrador</option>
                    <option value="aluno">Aluno</option>
                    <option value="instrutor">Instrutor</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Acessar</button>
        </form>
    </main>

    <footer class="bg-secondary mt-2">
        <p class="mt-3 mb-1 text-center text-white">Feito por Luann Sapucaia e Felipe Matheus</p>
        <p class="font-italic mb-2 text-center text-white">&copy;Copyrights </p>
    </footer>

    <script type="text/javascript" src="assets/js/jquery.js"></script>
    <script type="text/javascript" src="https://unpkg.com/@popperjs/core@2.0.0"></script>
    <script type="text/javascript" src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="assets/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="assets/js/locastyle.js"></script>
</body>

</html>
