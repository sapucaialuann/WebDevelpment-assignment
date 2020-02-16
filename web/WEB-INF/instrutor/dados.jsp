<%@page import="model.Instrutor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../template/head.jsp" />
        <link rel="stylesheet" type="text/css" href="../../assets/css/register.css">
    </head>
    <body>
        <jsp:include page="../template/navbar.jsp" />
        <jsp:include page="../template/instrutor-navbar.jsp"/>
        <% Instrutor i = (Instrutor) request.getAttribute("instrutor"); %>
        <div class="container">
            <section class="mb-5 w-75 p-5 section-login">
                <form class="needs-validation" id="instrutores-form" method="POST" action="/instrutor/dados">
                    <h2> Alterar dados </h2> 
                   <div class="form-group">
                        <label>Nome *</label>
                        <input type="text" class="form-control" required minlength="3" maxlength="50"
                               value="<%if (i != null) {%><%=i.getNome()%><%}%>" name="nome">
                    </div>
                    <div class="form-group">
                        <label>Email *</label>
                        <input type="email" class="form-control"required minlength="3" maxlength="50"
                               pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
                               value="<%if (i != null) {%><%=i.getEmail()%><%}%>" name="email">
                    </div>
                    <div class="form-group">
                        <label>Login *</label>
                        <input type="text" class="form-control" required minlength="3" maxlength="20"
                               value="<%if (i != null) {%><%=i.getLogin()%><%}%>" name="login">
                    </div>
                    <div class="form-group">
                        <label>Senha *</label>
                        <input type="password" class="form-control" required minlength="6" name="senha"
                               value="<%if (i != null) {%><%=i.getSenha()%><%}%>">
                    </div>
                    <div class="form-group">
                        <label>Experiência</label>
                        <br/>
                        <textarea name="experiencia" form="instrutores-form" maxlength="255"><%if (i != null && i.getExperiencia() != null) {%><%=i.getExperiencia()%><%}%></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Persistir</button>
                </form>
            </section>
        </div>
        <jsp:include page="../template/footer.jsp"/>
    </body>
</html>
