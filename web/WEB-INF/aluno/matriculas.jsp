<%@page import="model.Matricula"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <jsp:include page="../template/head.jsp" />
        <link rel="stylesheet" type="text/css" href="../../assets/css/register.css">
    </head>
    <body>
        <jsp:include page="../template/navbar.jsp" />
        <jsp:include page="../template/aluno-navbar.jsp"/>
        <div class="container">
            <h2>Matrículas realizadas</h2>
            <table class="table table-responsive table-hover table-striped table-bordered">
                <thead>
                    <tr>
                        <th scope="col">Turma</th>
                        <th scope="col">Curso</th>
                        <th scope="col">Data de matricula</th>
                        <th scope="col">Nota</th>
                    </tr>
                </thead>
                <tbody>
                    <% List<Matricula> matriculas = (List<Matricula>) request.getAttribute("matriculas");
                        for (Matricula m : matriculas) {
                    %>
                    <tr>
                        <td><%=m.getTurma().getId()%></td>
                        <td><%=m.getTurma().getCurso().getNome()%></td>
                        <td><%=m.getDataMatricula()%></td>
                        <td><% if (m.getNota() != 0.0) {%><%=m.getNota()%><%}%></td>
                    </tr>
                    <% }%>
                </tbody>
            </table>
        </div>
        <jsp:include page="../template/footer.jsp" />
    </body>
</html>