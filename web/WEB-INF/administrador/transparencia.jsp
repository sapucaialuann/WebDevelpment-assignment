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
        <jsp:include page="../template/admin-navbar.jsp"/>
        <div class="container">
            <h2>Transparência</h2>
            <div class="container">
                <% Map<Instrutor, List<Turma>> map = (Map<Instrutor, List<Turma>>) request.getAttribute("map");
                Map<Instrutor, Integer> map2 = (Map<Instrutor, Integer>) request.getAttribute("map2");
                for (Map.Entry<Instrutor, List<Turma>> entry : map.entrySet()) {%>
                <h4><%=entry.getKey().getNome()%></h4>
                <div class="row">
                    <table class="table table-responsive table-hover table-striped table-bordered">
                        <thead>
                            <tr>
                                <th scope="col">Turma</th>
                                <th scope="col">Curso</th>
                                <th scope="col">Data Início</th>
                                <th scope="col">Data Final</th>
                                <th scope="col">Carga horária</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                        for (Turma t : entry.getValue()) {%>
                            <tr>
                                <td><%=t.getId()%></td>
                                <td><%=t.getCurso().getNome()%></td>
                                <td><%=t.getDataInicio()%></td>
                                <td><%=t.getDataFinal()%></td>
                                <td><% if (t.getCargaHoraria() != 0) {%><%=t.getCargaHoraria()%><%}%></td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                    Valor total: R$ <%= map2.get(entry.getKey()) %>
                </div>
                <%}
                %>
            </div>
        </div>
        <jsp:include page="../template/footer.jsp" />
    </body>
</html>