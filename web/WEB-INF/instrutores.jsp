<%@page import="model.Instrutor"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <jsp:include page="template/head.jsp"/>
        <link rel="stylesheet" type="text/css" href="../assets/css/instrutores.css">
    </head>
    <body>
        <jsp:include page="template/navbar.jsp"/>
        <main>
            <div class="container">
                <% List<Instrutor> instrutores = (List<Instrutor>) request.getAttribute("instrutores");
                    boolean close = false;
                    for (int i = 0; i < instrutores.size(); i++) {
                        Instrutor in = instrutores.get(i);
                %>
                <% if (i % 2 == 0 && !close) { close = true;%>
                <div class="row">
                    <% } else if ((i % 2 == 0 && close) || instrutores.size() - 1 == i) {  close = false; %>
                </div>
                <%}%>
                <div class="card" style="width: 18rem;">
                    <img src="/imagem?type=instrutores&filename=<%=in.getId()%>.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%=in.getNome()%></h5>
                        <p class="card-text"><%=in.getEmail()%></p>
                        <p class="card-text">Valor/hora: R$ <%=in.valorHora()%></p>
                    </div>
                </div>
                <%}%>
            </div>
        </main>
        <jsp:include page="template/footer.jsp"/>
    </body>
</html>
