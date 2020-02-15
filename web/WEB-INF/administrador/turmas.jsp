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
        <jsp:include page="../template/admin-navbar.jsp"/>
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
                    <% List<Turma> turmas = (List<Turma>) request.getAttribute("turmas");
                    for (Turma t : turmas) {%>
                    <tr>
                        <th scope="row"><%=t.getId()%></th>
                        <td><%=t.getInstrutor().getId()%></td>
                        <td><%=t.getCurso().getId()%></td>
                        <td><%=t.getDataInicio()%></td>
                        <td><%=t.getDataFinal()%></td>
                        <td><%=t.getCargaHoraria()%></td>
                        <td>
                            <a href="/administrador/turma?id=<%=t.getId()%>">
                                <button type="button" class="btn btn-outline-primary">Editar</button>
                            </a>  
                            <a href="/administrador/turmas?id=<%=t.getId()%>">
                                <button type="button" class="btn btn-outline-danger">Deletar</button>
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