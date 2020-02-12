<%@ page import="model.Usuario" %>
<%@ page import="enums.TipoUsuario" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<% Usuario user = (Usuario) request.getSession().getAttribute("user");%>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="../assets/css/reset.css">
    <link rel="stylesheet" type="text/css" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/bootstrap/css/bootstrap-grid.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/index.css">
    <title>Curso Lero Lero</title>
</head>

<body>
    <header class="navbar navbar-expand-lg navbar-light bg-light header-home">
        <a class="navbar-brand" href="index.jsp"><img src="../assets/img/lerolerologo.png"
                alt="Logo da empresa Lero Lero"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto justify-content-end">
                <li class="nav-item"><a class="nav-link" href="sobre">Sobre</a></li>
                <li class="nav-item"><a class="nav-link" href="instrutores">Instrutores</a></li>
                <li class="nav-item"><a class="nav-link" href="comentarios">Comentários</a></li>
                <li class="nav-item"><a class="nav-link" href="registro">Registro</a></li>
                <% if (user == null ) { %>
                    <li class="nav-item"><a class="nav-link" href="login">Login</a></li>
                <% } else { %>
                    <% TipoUsuario tipo = user.getTipo();
                    if (tipo.equals(TipoUsuario.ADMIN)) {%>
                        <li class="nav-item"><a class="nav-link" href="administrador/crud">Área restrita</a></li>
                    <%} else if (tipo.equals(TipoUsuario.INSTRUTOR)) { %>
                        <li class="nav-item"><a class="nav-link" href="instrutor">Área do instrutor</a></li>
                    <%} else if (tipo.equals(TipoUsuario.ALUNO)) { %>
                        <li class="nav-item"><a class="nav-link" href="aluno">Área do aluno</a></li>
                    <%} %>
                    <li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
                <% } %>
            </ul>
        </div>
    </header>

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
                        <h2 class="text-dark font-weight-bolder">First slide label</h2>
                        <p class="text-dark font-weight-bold">Nulla vitae elit libero, a pharetra augue mollis interdum.
                        </p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="../assets/img/slide2.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h2 class="text-dark font-weight-bolder">Second slide label</h2>
                        <p class="text-dark font-weight-bold">Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                        </p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="../assets/img/slide3.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h2 class="text-dark font-weight-bolder">Third slide label</h2>
                        <p class="text-dark font-weight-bold">Praesent commodo cursus magna, vel scelerisque nisl
                            consectetur.</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev button-carousel" href="#carouselExampleCaptions" role="button"
                data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next button-carousel" href="#carouselExampleCaptions" role="button"
                data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </main>

    <section class="card-list">
        <h2 class="font-weight-bold text-center mb-5">Nossos cursos:</h2>
        <div class="card mb-4 card-course" style="max-width: 800px;">
            <div class="row no-gutters">
                <div class="col-md-4">
                    <img src="../assets/img/slide3.jpg" class="card-img" alt="...">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                            additional content. This content is a little bit longer.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="card mb-4 card-course" style="max-width: 800px;">
            <div class="row no-gutters">
                <div class="col-md-4">
                    <img src="../assets/img/slide2.jpg" class="card-img" alt="...">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                            additional content. This content is a little bit longer.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section>
        <h2 class="font-weight-bold text-center mb-5">Nossas turmas:</h2>

        <div class="row classes-list">
            <div class="mb-4 sm-6">
                <div class="card" style="width: 18rem;">
                    <img src="../assets/img/slide3.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>

            <div class="mb-4 sm-6">
                <div class="card" style="width: 18rem;">
                    <img src="../assets/img/slide3.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>

            <div class="mb-4 sm-6">
                <div class="card" style="width: 18rem;">
                    <img src="../assets/img/slide3.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer class="bg-secondary mt-3">
        <p class="mt-3 mb-1 text-center text-white">Feito por Luann Sapucaia e Felipe Matheus</p>
        <p class="font-italic mb-2 text-center text-white">&copy;Copyrights </p>
    </footer>

    <script type="text/javascript" src="../assets/js/jquery.js"></script>
    <script type="text/javascript" src="https://unpkg.com/@popperjs/core@2.0.0"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="../assets/js/locastyle.js"></script>
</body>

</html>