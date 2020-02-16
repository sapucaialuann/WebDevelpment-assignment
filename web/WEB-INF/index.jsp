<%@page import="model.Turma"%>
<%@page import="model.Curso"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <jsp:include page="template/head.jsp"/>
</head>
<body>
    <jsp:include page="template/navbar.jsp"/>
    <main class="mb-5">
        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="../assets/img/slide1.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h2 class="text-dark font-weight-bolder">Aulas de qualidade</h2>
                        <p class="text-dark font-weight-bold">
                            Utilizamos uma metodologia de ensino que surpreenderá você e seu filho(a)
                        </p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="../assets/img/slide2.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h2 class="text-dark font-weight-bolder">Equipe preparada</h2>
                        <p class="text-dark font-weight-bold">
                            Temos disponíveis os melhores instrutores para alavancar o conhecimento de nossos alunos
                        </p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="../assets/img/slide3.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h2 class="text-dark font-weight-bolder">Ambiente confortável</h2>
                        <p class="text-dark font-weight-bold">
                            Salas interativas, regalias e passa-tempos
                        </p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev button-carousel" href="#carouselExampleCaptions" role="button"
                data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Anterior</span>
            </a>
            <a class="carousel-control-next button-carousel" href="#carouselExampleCaptions" role="button"
                data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Próximo</span>
            </a>
        </div>
    </main>
    <section class="card-list">
        <h2 class="font-weight-bold text-center mb-5">Alguns de nossos cursos</h2>
        <% List<Curso> cursos = (List<Curso>) request.getAttribute("cursos");
        for (Curso c : cursos) {%>
        <div class="card mb-4 card-course" style="max-width: 800px;">
            <div class="row no-gutters">
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title"><%=c.getNome()%></h5>
                        <p class="card-text"><%=c.getEmenta()%></p>
                        <p class="card-text"><small class="text-muted">Preço: R$ <%=c.getPreco()%></small></p>
                        <p class="card-text"><small class="text-muted">Carga horária: <%=c.getCargaHoraria()%>h</small></p>
                    </div>
                </div>
            </div>
        </div>
        <%}%>
    </section>
    <section>
        <h2 class="font-weight-bold text-center mb-5">Algumas de nossas turmas</h2>
        <div class="row classes-list">
            <% List<Turma> turmas = (List<Turma>) request.getAttribute("turmas");
            for (Turma t : turmas) {%>
            <div class="mb-4 sm-6">
                <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title"><%=t.getCurso().getNome()%></h5>
                        <p class="card-text"><%=t.getInstrutor().getNome()%></p>
                    </div>
                </div>
            </div>
            <%}%>
        </div>
    </section>
    <jsp:include page="template/footer.jsp"/>
</body>
</html>
