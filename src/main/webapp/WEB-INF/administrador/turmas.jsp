<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <jsp:include page="../template/head.jsp" />
    <link rel="stylesheet" type="text/css" href="../../assets/css/index.css">
    <link rel="stylesheet" type="text/css" href="../../assets/css/register.css">
</head>

<body>
    <jsp:include page="../template/navbar.jsp" />
    <!-- Turmas -->
    <div class="container">
        <h2>Turmas</h2>
        <table class="table table-responsive table-hover table-striped table-bordered">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">ID Instrutores</th>
                    <th scope="col">ID Cursos</th>
                    <th scope="col">Data Início</th>
                    <th scope="col">Data Final</th>
                    <th scope="col">Carga horária</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Mark</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td><button type="button" class="btn btn-outline-primary">Editar</button>
                        <button type="button" class="btn btn-outline-danger">Deletar</button></td>
                </tr>
            </tbody>
        </table>

        <h3>Cadastrar Turma:</h3>
        <section class="mt-5 mb-5 w-75 p-5 section-login">
            <form class="needs-validation" id="turmas-form">
                <div class="form-group">
                    <label for="exampleInputEmail1">Instutores ID</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                        required minlength="3" maxlength="11">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Cursos ID</label>
                    <input type="text" class="form-control" id="exampleInputPassword1" required minlength="3"
                        maxlength="10">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Data Inicio</label>
                    <input type="date" class="form-control" id="exampleInputPassword1" placeholder="Data de inicio"
                        pattern="(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-9])|(?:(?!02)(?:0[1-9]|1[0-2])-(?:30))|(?:(?:0[13578]|1[02])-31))">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Data Fim</label>
                    <input type="date" class="form-control" id="exampleInputPassword1" placeholder="Data de fim"
                        pattern="(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-9])|(?:(?!02)(?:0[1-9]|1[0-2])-(?:30))|(?:(?:0[13578]|1[02])-31))">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">CH</label>
                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="C.H" minlength="3"
                        maxlength="5">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </section>
    </div>
    <jsp:include page="../template/footer.jsp" />
</body>

</html>