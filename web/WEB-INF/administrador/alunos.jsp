<%@ page contentType="text/html;charset=UTF-8" %>
<html>

    <head>
        <jsp:include page="../template/head.jsp" />
        <link rel="stylesheet" type="text/css" href="../../assets/css/register.css">
    </head>

    <body>
        <jsp:include page="../template/navbar.jsp" />
        <jsp:include page="../template/admin-navbar.jsp"/>
        <!-- Alunos -->
        <div class="container">
            <h2>Alunos</h2>
            <table class="table table-responsive-md table-hover table-striped table-bordered">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">CPF</th>
                        <th scope="col">Nome</th>
                        <th scope="col">Email</th>
                        <th scope="col">Celular</th>
                        <th scope="col">Login</th>
                        <th scope="col">Senha</th>
                        <th scope="col">Endereço</th>
                        <th scope="col">Cidade</th>
                        <th scope="col">Bairro</th>
                        <th scope="col">CEP</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td><button type="button" class="btn btn-outline-primary">Editar</button>
                            <button type="button" class="btn btn-outline-danger">Deletar</button></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <jsp:include page="../template/footer.jsp" />
    </body>

</html>