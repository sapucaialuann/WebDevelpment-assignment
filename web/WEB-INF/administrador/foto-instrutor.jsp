<%@page import="model.Aluno"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <jsp:include page="../template/head.jsp" />
        <link rel="stylesheet" type="text/css" href="../../assets/css/register.css">
    </head>
    <body>
        <jsp:include page="../template/navbar.jsp" />
        <jsp:include page="../template/admin-navbar.jsp"/>
        <% Long id = Long.valueOf((String) request.getAttribute("id")); %>
        
        <div class="container">
            <h2>Foto atual</h2>   
            <img src="/imagem?type=instrutores&filename=<%=id%>.jpg"/>
            <h2>Alterar foto</h2>
            <form method="POST" action="/administrador/foto-instrutor?id=<%=id%>" enctype="multipart/form-data">
                <label>Fazer upload da foto</label>
                <input type="file" name="file" accept=".jpg" required/>
                <button type="submit" class="btn btn-primary">Enviar</button>
            </form>
        </div>
        <jsp:include page="../template/footer.jsp" />
    </body>
</html>