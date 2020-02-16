<%@page import="model.Aluno"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <jsp:include page="template/head.jsp"/>
    <link rel="stylesheet" type="text/css" href="../assets/css/comments.css">
</head>
<body>
    <jsp:include page="template/navbar.jsp"/>
    <% List<Aluno> alunos = (List<Aluno>) request.getAttribute("alunos");
    for (Aluno a : alunos) {%>
    <div class="media">
        <img src="/imagem?type=alunos&filename=<%=a.getId()%>.jpg" class="mr-3" alt="...">
        <div class="media-body">
            <h5 class="mt-0"><%=a.getNome()%></h5>
            <%=a.getComentario()%>
        </div>
    </div>
    <%}%>
    <jsp:include page="template/footer-fixed.jsp"/>
</body>
</html>
