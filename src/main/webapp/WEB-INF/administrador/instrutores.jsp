<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <jsp:include page="../template/head.jsp" />
    <link rel="stylesheet" type="text/css" href="../../assets/css/index.css">
    <link rel="stylesheet" type="text/css" href="../../assets/css/register.css">
</head>

<body>
    <jsp:include page="../template/navbar.jsp" />
    <!-- Instrutores -->
    <div class="container">
        <h2>Instrutores</h2>
        <table class="table table-responsive table-hover table-striped table-bordered">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Email</th>
                    <th scope="col">Valor/Hora</th>
                    <th scope="col">Login</th>
                    <th scope="col">Senha</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>@mdo</td>
                </tr>
            </tbody>
        </table>

        <h3>Cadastrar Instrutor:</h3>
        <section class="mb-5 w-75 p-5 section-login">
            <form class="needs-validation" id="instrutores-form">
                <div class="form-group">
                    <label for="exampleInputEmail1">Nome</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                        placeholder="Nome" required minlength="3" maxlength="50">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Email</label>
                    <input type="email" class="form-control" id="exampleInputPassword1" placeholder="Email" required
                        minlength="3" maxlength="50">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Valor/Hora</label>
                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Valor/Hora"
                        minlength="3" maxlength="10">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Login</label>
                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Login" required
                        minlength="3" maxlength="20">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Senha</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Senha" required
                        minlength="3" maxlength="255">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </section>
    </div>
    <jsp:include page="../template/footer.jsp" />
</body>

</html>