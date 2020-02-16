<%@page import="model.Matricula"%>
<%@page import="java.util.Map"%>
<%@page import="model.Turma"%>
<%@page import="model.Instrutor"%>
<%@page import="model.Aluno"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <jsp:include page="../template/head.jsp" />
        <link rel="stylesheet" type="text/css" href="../../assets/css/register.css">
    </head>
    <body>
        <jsp:include page="../template/navbar.jsp" />
        <jsp:include page="../template/instrutor-navbar.jsp"/>
        <div class="container">
            <h2>Declarar notas</h2>
            <div class="container">
                <% Map<Turma, List<Matricula>> map = (Map<Turma, List<Matricula>>) request.getAttribute("map");
                    for (Map.Entry<Turma, List<Matricula>> entry : map.entrySet()) {%>
                <h4>Turma de <%=entry.getKey().getCurso().getNome()%></h4>
                <div class="row">
                    <table class="table table-responsive table-hover table-striped table-bordered">
                        <thead>
                            <tr>
                                <th scope="col">Aluno</th>
                                <th scope="col">Nota</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                for (Matricula m : entry.getValue()) {%>
                        <form method="POST" action="/instrutor/nota">
                            <input type="hidden" name="id" value="<%=m.getId()%>"/>
                            <tr>
                                <td><%=m.getAluno().getNome()%></td>
                                <td>
                                    <input type="number" step="any" min="0" name="nota"
                                           value="<% if (m.getNota() != 0.0) {%><%=m.getNota()%><%}%>"/>
                                </td>
                                <td>
                                    <button type="submit" class="btn btn-outline-primary">Alterar</button>
                                </td>
                            </tr>
                        </form>
                        <%}%>
                        </tbody>
                    </table>
                </div>
                <%}
                %>
            </div>
        </div>
        <jsp:include page="../template/footer.jsp" />
    </body>
</html>