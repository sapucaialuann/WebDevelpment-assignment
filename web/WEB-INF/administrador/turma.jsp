<%@page import="model.Turma"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <jsp:include page="../template/head.jsp" />
        <link rel="stylesheet" type="text/css" href="../../assets/css/register.css">
    </head>
    <body>
        <jsp:include page="../template/navbar.jsp" />
        <jsp:include page="../template/admin-navbar.jsp"/>
        <% Turma t = (Turma) request.getAttribute("turma"); %>
        <div class="container">
            <section class="mt-5 mb-5 w-75 p-5 section-login">
                <form class="needs-validation" id="cursos-form" method="POST" action="/administrador/turma">
                    <h2> Turma </h2>
                    <% if (t != null) {%>
                    <input type="hidden" name="id" value="<%=t.getId()%>">
                    <% } %>
                    <div class="form-group">
                        <label>Instrutores ID *</label>
                        <input type="number" min="0" class="form-control" required name="instrutor-id"
                               value="<%if (t != null) {%><%=t.getInstrutor().getId()%><%}%>">
                    </div>
                    <div class="form-group">
                        <label>Cursos ID *</label>
                        <input type="number" min="0" class="form-control" required name="curso-id"
                               value="<%if (t != null) {%><%=t.getCurso().getId()%><%}%>">
                    </div>
                    <div class="form-group">
                        <label>Data Inicio</label>
                        <input type="date" class="form-control" name="data-inicio"
                               value="<%if (t != null) {%><%=t.getDataInicio()%><%}%>">
                    </div>
                    <div class="form-group">
                        <label>Data Final</label>
                        <input type="date" class="form-control" name="data-final"
                               value="<%if (t != null) {%><%=t.getDataFinal()%><%}%>">
                    </div>
                    <div class="form-group">
                        <label>CH</label>
                        <input type="text" class="form-control" name="carga-horaria" pattern="\d{0,5}"
                               value="<%if (t != null && t.getCargaHoraria() != 0) {%><%=t.getCargaHoraria()%><%}%>">
                    </div>
                    <button type="submit" class="btn btn-primary">Persistir</button>
                </form>
            </section>
        </div>
        <jsp:include page="../template/footer.jsp" />
    </body>
</html>