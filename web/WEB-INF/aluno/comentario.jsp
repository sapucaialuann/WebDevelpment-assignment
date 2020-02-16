<%@page import="model.Aluno"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <jsp:include page="../template/head.jsp" />
        <link rel="stylesheet" type="text/css" href="../../assets/css/register.css">
    </head>
    <body>
        <jsp:include page="../template/navbar.jsp" />
        <jsp:include page="../template/aluno-navbar.jsp"/>
        <% Aluno a = (Aluno) request.getAttribute("aluno"); %>
        <div class="container">
            <h2>Alunos</h2>
            <section class="mb-5 w-75 p-5 section-login">
                <form class="needs-validation" id="alunos-form" method="POST" action="/aluno/comentario">
                    <div class="form-group">
                        <label>Comentário *</label>
                        <br/>
                        <textarea form="alunos-form" name="comentario"><%if(a != null){%><%=a.getComentario()%><%}%></textarea>
                    </div>
                    <button class="btn btn-primary" type="submit">Persistir</button>
                </form>
            </section>
        </div>
        <jsp:include page="../template/footer.jsp" />
    </body>
</html>