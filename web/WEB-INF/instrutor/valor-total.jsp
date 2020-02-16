<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <jsp:include page="../template/head.jsp" />
        <link rel="stylesheet" type="text/css" href="../../assets/css/register.css">
    </head>
    <body>
        <jsp:include page="../template/navbar.jsp" />
        <jsp:include page="../template/instrutor-navbar.jsp"/>
        <% int valorTotal = (int) request.getAttribute("valorTotal");%>
        <div class="container">
            <div class="row">
                <div class="col">
                    <h2> Valor total de ganho </h2>
                    R$ <%=valorTotal%>
                </div>
            </div>
        </div>
        <jsp:include page="../template/footer-fixed.jsp" />
    </body>

</html>