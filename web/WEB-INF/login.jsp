<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <jsp:include page="template/head.jsp"/>
    <link rel="stylesheet" type="text/css" href="../assets/css/register.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/login.css">
</head>
<body>
    <jsp:include page="template/navbar.jsp"/>
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
    <jsp:include page="template/footer.jsp"/>
</body>

</html>
