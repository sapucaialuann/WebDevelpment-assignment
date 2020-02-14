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
    <jsp:include page="template/footer.jsp"/>
</body>
</html>
