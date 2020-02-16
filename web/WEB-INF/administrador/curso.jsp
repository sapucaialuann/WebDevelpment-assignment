<%@page import="model.Curso"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <jsp:include page="../template/head.jsp" />
        <link rel="stylesheet" type="text/css" href="../../assets/css/register.css">
    </head>
    <body>
        <jsp:include page="../template/navbar.jsp" />
        <jsp:include page="../template/admin-navbar.jsp"/>
        <%
            Curso c = (Curso) request.getAttribute("curso");
        %>
        <div class="container">
            <section class="mb-5 w-75 p-5 section-login">
                <form class="needs-validation" id="cursos-form" method="POST" action="/administrador/curso">
                    <h2> Curso </h2>
                    <% if (c != null) {%>
                    <input type="hidden" name="id" value="<%=c.getId()%>">
                    <% } %>
                    <div class="form-group">
                        <label>Nome *</label>
                        <input type="text" class="form-control" required minlength="3" maxlength="50" 
                               name="nome" value="<%if (c != null) {%><%=c.getNome()%><%}%>">
                    </div>
                    <div class="form-group">
                        <label>Requisito</label>
                        <input type="text" class="form-control" maxlength="255" name="requisito"
                               value="<%if (c != null) {%><%=c.getRequisito()%><%}%>">
                    </div>
                    <div class="form-group">
                        <label>Ementa</label>
                        <input type="text" class="form-control" maxlength="255" name="ementa"
                               value="<%if (c != null) {%><%=c.getEmenta()%><%}%>">
                    </div>
                    <div class="form-group">
                        <label>Carga Horária (h)</label>
                        <input type="text" class="form-control" name="carga-horaria" pattern="\d{0,5}"
                               value="<%if (c != null && c.getCargaHoraria() != 0) {%><%=c.getCargaHoraria()%><%}%>">
                    </div>
                    <div class="form-group">
                        <label>Preço (R$)</label>
                        <input type="number" class="form-control" name="preco" step="any" min="0"
                               value="<%if (c != null && c.getPreco() != 0.0) {%><%=c.getPreco()%><%}%>">
                    </div>
                    <button type="submit" class="btn btn-primary">Persistir</button>
                </form>
            </section>
        </div>
        <jsp:include page="../template/footer.jsp" />
    </body>
</html>
