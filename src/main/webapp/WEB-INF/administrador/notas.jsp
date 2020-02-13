<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <jsp:include page="../template/head.jsp" />
    <link rel="stylesheet" type="text/css" href="../../assets/css/index.css">
    <link rel="stylesheet" type="text/css" href="../../assets/css/register.css">
</head>

<body>
    <jsp:include page="../template/navbar.jsp" />
    <!-- Notas -->
    <div class="container">
        <h1>Notas</h1>
        <h2>NOME DO CURSO</h2>
        <table class="table table-responsive table-hover table-striped table-bordered">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Matrícula</th>
                    <th scope="col">Aluno</th>
                    <th scope="col">Nota</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                </tr>
            </tbody>
        </table>

    </div>
    <jsp:include page="../template/footer.jsp" />
</body>

</html>