<%@ page contentType="text/html;charset=UTF-8" %>
<html>

    <head>
        <jsp:include page="../template/head.jsp" />
        <link rel="stylesheet" type="text/css" href="../../assets/css/register.css">
    </head>

    <body>
        <jsp:include page="../template/navbar.jsp" />
        <jsp:include page="../template/admin-navbar.jsp"/>
        <!-- Cursos -->
        <div class="container">
            <h2>Cursos</h2>
            <table class="table table-responsive table-hover table-striped table-bordered">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nome</th>
                        <th scope="col">Requisito</th>
                        <th scope="col">Ementa</th>
                        <th scope="col">Carga horária</th>
                        <th scope="col">Preço</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td><button type="button" class="btn btn-outline-primary">Editar</button>
                            <button type="button" class="btn btn-outline-danger">Deletar</button></td>
                    </tr>
                </tbody>
            </table>
            <h3>Cadastrar curso:</h3>
            <section class="mb-5 w-75 p-5 section-login">
                <form class="needs-validation" id="cursos-form">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Nome</label>
                        <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                               placeholder="Nome" required minlength="3" maxlength="50">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Requisito</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Requisito"
                               minlength="3" maxlength="255">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Ementa</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Ementa"
                               minlength="3" maxlength="255">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Carga Horária</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" placeholder="C.H" minlength="3"
                               maxlength="5">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Preço</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Preço"
                               minlength="3">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </section>
        </div>
        <jsp:include page="../template/footer.jsp" />
    </body>

</html>