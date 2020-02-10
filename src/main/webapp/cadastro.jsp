<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="stylesheet" type="text/css" href="assets/css/reset.css">
	<link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap-grid.css">
	<link rel="stylesheet" type="text/css" href="assets/css/register.css">
	<link rel="stylesheet" type="text/css" href="assets/css/index.css">
	<title>Curso Lero Lero</title>
</head>

<body>
	<header class="navbar navbar-expand-lg navbar-light bg-light header-home">
		<a class="navbar-brand" href="index.jsp"><img src="assets/img/lerolerologo.png"
													  alt="Logo da empresa Lero Lero"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto justify-content-end">
				<li class="nav-item"><a class="nav-link" href="sobre.jsp">Sobre</a></li>
				<li class="nav-item"><a class="nav-link" href="instrutores.jsp">Instrutores</a></li>
				<li class="nav-item"><a class="nav-link" href="comentarios.jsp">Comentários</a></li>
				<li class="nav-item"><a class="nav-link" href="cadastro.jsp">Registro</a></li>
				<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
				<li class="nav-item"><a class="nav-link" href="aluno/pessoal.jsp">Área do aluno</a></li>
				<li class="nav-item"><a class="nav-link" href="instrutor/pessoal.jsp">Área do instrutor</a></li>
				<li class="nav-item"><a class="nav-link" href="administrador/registros.jsp">Área restrita</a></li>
			</ul>
		</div>
	</header>

	<main class="mt-5 mb-5 w-75 p-5 section-login">
		<form class="needs-validation" id="form-register" method="POST" action="/registro">
			<h2>Registro</h2>
			<!-- Nome -->
			<div class="form-group">
				<label form="form-register">Nome</label>
				<input type="text" class="form-control" minlength="3" maxlength="50" required name="nome">
				<div class="valid-feedback">
					Looks good!
				</div>
			</div>
			<!-- Login -->
			<div class="form-group ">
				<label form="form-register">Login</label>
				<input type="text" class="form-control" required minlength="3" maxlength="20" name="login">
				<div class="valid-feedback">
					Looks good!
				</div>
			</div>
			<!-- Senha -->
			<div class="form-group ">
				<label form="form-register">Senha</label>
				<input type="password" class="form-control" required minlength="6" maxlength="20" name="senha">
				<div class="valid-feedback">
					Looks good!
				</div>
			</div>
			<!-- CPF -->
			<div class="form-group ">
				<label form="form-register">CPF</label>
				<input type="text" class="form-control cpf-mask" data-mask="00000000000"
					placeholder="Ex.: 00000000000" length="11" required name="cpf">
				<div class="valid-feedback">
					Looks good!
				</div>
			</div>
			<!-- Email -->
			<div class="form-group ">
				<label form="form-register">Email</label>
				<input placeholder="email@email.com" minlength="3" maxlength="50" type="email" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required name="email">
			</div>
			<!-- Telefone com DDD -->
			<div class="form-group">
				<label form="form-register">Celular</label>
				<input type="text" class="form-control cel-sp-mask" placeholder="Ex.: (00) 000000000"
					data-mask="(00) 000000000" minlength="10" maxlength="11" required name="celular">
			</div>
			<!-- ENDEREÇO -->
			<div class="form-row">
				<!-- CEP -->
				<div class="form-group">
					<label for="cep">CEP</label>
					<input class="form-control" minlength="9" maxlength="9" id="cep" type="text" required name="cep"/>
				</div>
				<!-- Rua -->
				<div class="form-group">
					<label class=" form-margin-fix" for="logradouro">Endereço</label>
					<input class="form-control  form-margin-fix" id="logradouro" type="text" required minlength="3"
						maxlength="50" name="endereco"/>
				</div>
			</div>
			<!-- Bairro e cidade -->
			<div class="form-row">
				<div class="form-group">
					<label for="bairro">Bairro</label>
					<input class="form-control" id="bairro" type="text" required name="bairro"/>
				</div>
				<div class="form-group">
					<label class=" form-margin-fix" for="cidade">Cidade</label>
					<input class="form-control  form-margin-fix" id="cidade" type="text" required name="cidade"/>
				</div>
			</div>
			<div class="form-group">
				<input type="hidden" value="comentario" name="comentario"/>
			</div>

			<button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"
				type="submit">Cadastrar</button>
		</form>
	</main>

	<footer class="bg-secondary mt-3 ">
		<p class="mt-3 mb-1 text-center text-white">Feito por Luann Sapucaia e Felipe Matheus</p>
		<p class="font-italic mb-2 text-center text-white">&copy;Copyrights </p>
	</footer>


	<script type="text/javascript" src="assets/js/jquery.js"></script>
	<script type="text/javascript" src="https://unpkg.com/@popperjs/core@2.0.0"></script>
	<script type="text/javascript" src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="assets/js/locastyle.js"></script>

</body>

</html>
