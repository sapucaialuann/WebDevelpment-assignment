<%@page import="model.Turma"%>
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
            <h2>Realizar matrícula</h2>
            <table class="table table-responsive table-hover table-striped table-bordered">
                <thead>
                    <tr>
                        <th scope="col">Instrutor</th>
                        <th scope="col">Curso</th>
                        <th scope="col">Data Início</th>
                        <th scope="col">Data Final</th>
                        <th scope="col">Carga horária</th>
                    </tr>
                </thead>
                <tbody>
                    <% List<Turma> turmas = (List<Turma>) request.getAttribute("turmas");
                    for (Turma t : turmas) {%>
                    <tr>
                        <td><%=t.getInstrutor().getNome()%></td>
                        <td><%=t.getCurso().getNome()%></td>
                        <td><%=t.getDataInicio()%></td>
                        <td><%=t.getDataFinal()%></td>
                        <td><% if (t.getCargaHoraria() != 0) {%><%=t.getCargaHoraria()%><%}%></td>
                        <td>
                            <a href="/aluno/matricula?id=<%=t.getId()%>">
                                <button type="button" class="btn btn-outline-primary">Matricular</button>
                            </a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
        <jsp:include page="../template/footer.jsp" />
    </body>
</html>