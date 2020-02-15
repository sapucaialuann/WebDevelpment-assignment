<%@page import="model.Instrutor"%>
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
            <h2>Instrutores</h2>
            <table class="table table-responsive table-hover table-striped table-bordered">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nome</th>
                        <th scope="col">Email</th>
                        <th scope="col">Valor/Hora</th>
                        <th scope="col">Login</th>
                    </tr>
                </thead>
                <tbody>
                    <% List<Instrutor> instrutores = (List<Instrutor>) request.getAttribute("instrutores");
                    for (Instrutor i : instrutores) {%>
                    <tr>
                        <th scope="row"><%=i.getId()%></th>
                        <td><%=i.getNome()%></td>
                        <td><%=i.getEmail()%></td>
                        <td>R$ <%=i.valorHora()%></td>
                        <td><%=i.getLogin()%></td>
                        <td>
                            <a href="/administrador/instrutor?id=<%=i.getId()%>">
                                <button type="button" class="btn btn-outline-primary">Editar</button>
                            </a>  
                            <a href="/administrador/instrutores?id=<%=i.getId()%>">
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