<%@page import="model.Curso"%>
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
                    <% List<Curso> cursos = (List<Curso>) request.getAttribute("cursos");
                        for (Curso c : cursos) {
                    %>
                    <tr>
                        <th scope="row"><%=c.getId()%></th>
                        <td><%=c.getNome()%></td>
                        <td><%=c.getRequisito()%></td>
                        <td><%=c.getEmenta()%></td>
                        <td><%=c.getCargaHoraria()%></td>
                        <td>R$ <%=c.getPreco()%></td>
                        <td>
                            <a href="/administrador/curso?id=<%=c.getId()%>">
                                <button type="button" class="btn btn-outline-primary">Editar</button>
                            </a>  
                            <a href="/administrador/cursos?id=<%=c.getId()%>">
                                <button type="button" class="btn btn-outline-danger">Deletar</button>
                            </a>
                        </td>
                    </tr>
                    <% }%>
                </tbody>
            </table>
        </div>
        <jsp:include page="../template/footer.jsp" />
    </body>
</html>