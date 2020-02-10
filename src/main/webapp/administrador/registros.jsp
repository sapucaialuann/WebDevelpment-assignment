<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<title>Cursos Lero Lero</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../assets/css/reset.css">
	<link rel="stylesheet" type="text/css" href="../assets/bootstrap/css/bootstrap-grid.min.css">
	<link rel="stylesheet" type="text/css" href="../assets/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/index.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/register.css">


</head>

<body>

	<header class="navbar navbar-expand-lg navbar-light bg-light header-home">
		<a class="navbar-brand" href="../index.jsp"><img src="../assets/img/lerolerologo.png"
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

	<h1 class="mb-3">Tabelas</h1>
	<!-- Cursos -->
	<div class="container">
		<h2>Cursos</h2>
		<table class="table table-responsive table-hover table-striped table-bordered">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Nome</th>
					<th scope="col">Requisito</th>
					<th scope="col">Ementa</th>
					<th scope="col">Carga horária</th>
					<th scope="col">Preço</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>Mark</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td>@mdo</td>
					<td>@mdo</td>
					<td><button type="button" class="btn btn-outline-primary">Selecionar</button>
						<button type="button" class="btn btn-outline-danger">Deletar</button></td>
				</tr>
			</tbody>
		</table>

		<h3>Cadastrar curso:</h3>
		<section class="mb-5 w-75 p-5 section-login">
			<form class="needs-validation" id="cursos-form">
				<div class="form-group">
					<label for="exampleInputEmail1">Nome</label>
					<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
						placeholder="Nome" required minlength="3" maxlength="50">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Requisito</label>
					<input type="text" class="form-control" id="exampleInputPassword1" placeholder="Requisito"
						minlength="3" maxlength="255">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Ementa</label>
					<input type="text" class="form-control" id="exampleInputPassword1" placeholder="Ementa"
						minlength="3" maxlength="255">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Carga Horária</label>
					<input type="text" class="form-control" id="exampleInputPassword1" placeholder="C.H" minlength="3"
						maxlength="5">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Preço</label>
					<input type="text" class="form-control" id="exampleInputPassword1" placeholder="Preço"
						minlength="3">
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</section>
	</div>

	<!-- Instrutores -->
	<div class="container">
		<h2>Instrutores</h2>
		<table class="table table-responsive table-hover table-striped table-bordered">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Nome</th>
					<th scope="col">Email</th>
					<th scope="col">Valor/Hora</th>
					<th scope="col">Login</th>
					<th scope="col">Senha</th>
					<th scope="col"></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>Mark</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td>@mdo</td>
					<td>@mdo</td>
					<td><button type="button" class="btn btn-outline-primary">Selecionar</button>
						<button type="button" class="btn btn-outline-danger">Deletar</button></td>
				</tr>
			</tbody>
		</table>

		<h3>Cadastrar Instrutor:</h3>
		<section class="mb-5 w-75 p-5 section-login">
			<form class="needs-validation" id="instrutores-form">
				<div class="form-group">
					<label for="exampleInputEmail1">Nome</label>
					<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
						placeholder="Nome" required minlength="3" maxlength="50">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Email</label>
					<input type="email" class="form-control" id="exampleInputPassword1" placeholder="Email" required
						minlength="3" maxlength="50">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Valor/Hora</label>
					<input type="text" class="form-control" id="exampleInputPassword1" placeholder="Valor/Hora"
						minlength="3" maxlength="10">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Login</label>
					<input type="text" class="form-control" id="exampleInputPassword1" placeholder="Login" required
						minlength="3" maxlength="20">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Senha</label>
					<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Senha" required
						minlength="3" maxlength="255">
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</section>
	</div>

	<!-- Matrículas -->
	<div class="container">
		<h2>Matrículas</h2>
		<table class="table table-responsive table-hover table-striped table-bordered">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">ID Turmas</th>
					<th scope="col">ID Alunos</th>
					<th scope="col">Data Matrícula</th>
					<th scope="col">Nota</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>Mark</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td>@mdo</td>
					<td><button type="button" class="btn btn-outline-primary">Selecionar</button>
						<button type="button" class="btn btn-outline-danger">Deletar</button></td>
				</tr>
			</tbody>

		</table>

		<h3>Cadastrar Matrícula:</h3>
		<section class="mt-5 mb-5 w-75 p-5 section-login">
			<form class="needs-validation" id="matriculas-form">
				<div class="form-group">
					<label for="exampleInputEmail1">Turmas ID</label>
					<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
						required minlength="3" maxlength="10">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Alunos ID</label>
					<input type="text" class="form-control" id="exampleInputPassword1" required minlength="3"
						maxlength="11">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Data Matricula</label>
					<input type="date" class="form-control" id="exampleInputPassword1" placeholder="Data da matricula"
						pattern="(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-9])|(?:(?!02)(?:0[1-9]|1[0-2])-(?:30))|(?:(?:0[13578]|1[02])-31))">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Nota</label>
					<input type="text" class="form-control" id="exampleInputPassword1" placeholder="Nota"
						minlength="11">
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</section>
	</div>

	<!-- Turmas -->
	<div class="container">
		<h2>Turmas</h2>
		<table class="table table-responsive table-hover table-striped table-bordered">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">ID Instrutores</th>
					<th scope="col">ID Cursos</th>
					<th scope="col">Data Início</th>
					<th scope="col">Data Final</th>
					<th scope="col">Carga horária</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>Mark</td>
					<td>Mark</td>
					<td>Mark</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td><button type="button" class="btn btn-outline-primary">Selecionar</button>
						<button type="button" class="btn btn-outline-danger">Deletar</button></td>
					
				</tr>
			</tbody>
		</table>

		<h3>Cadastrar Turma:</h3>
		<section class="mt-5 mb-5 w-75 p-5 section-login">
			<form class="needs-validation" id="turmas-form">
				<div class="form-group">
					<label for="exampleInputEmail1">Instutores ID</label>
					<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
						required minlength="3" maxlength="11">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Cursos ID</label>
					<input type="text" class="form-control" id="exampleInputPassword1" required minlength="3"
						maxlength="10">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Data Inicio</label>
					<input type="date" class="form-control" id="exampleInputPassword1" placeholder="Data de inicio"
						pattern="(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-9])|(?:(?!02)(?:0[1-9]|1[0-2])-(?:30))|(?:(?:0[13578]|1[02])-31))">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Data Fim</label>
					<input type="date" class="form-control" id="exampleInputPassword1" placeholder="Data de fim"
						pattern="(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-9])|(?:(?!02)(?:0[1-9]|1[0-2])-(?:30))|(?:(?:0[13578]|1[02])-31))">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">CH</label>
					<input type="text" class="form-control" id="exampleInputPassword1" placeholder="C.H" minlength="3"
						maxlength="5">
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</section>
	</div>

	<!-- Administrador -->
	<div class="container">

		<h2>Administrador</h2>
		<table class="table table-responsive table-hover table-striped table-bordered">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Nome</th>
					<th scope="col">Login</th>
					<th scope="col">Senha</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>Mark</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td><button type="button" class="btn btn-outline-primary">Selecionar</button>
						<button type="button" class="btn btn-outline-danger">Deletar</button></td>
					
				</tr>
			</tbody>
		</table>

		<h3>Cadastro de administradores:</h3>
		<section class="mt-5 mb-5 w-75 p-5 section-login">
			<form class="needs-validation" id="admin-form">
				<h3>Admin</h3>
				<div class="form-group">
					<label for="exampleInputEmail1">Nome</label>
					<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
						placeholder="Nome" required minlength="3" maxlength="50">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Login</label>
					<input type="email" class="form-control" id="exampleInputPassword1" placeholder="Login" required
						minlength="3" maxlength="20">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Senha</label>
					<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Senha" required
						minlength="3" maxlength="255">
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</section>
	</div>

	<!-- Alunos -->
	<div class="container">
		<h2>Alunos</h2>
		<table class="table table-responsive-md table-hover table-striped table-bordered">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">CPF</th>
					<th scope="col">Nome</th>
					<th scope="col">Email</th>
					<th scope="col">Celular</th>
					<th scope="col">Login</th>
					<th scope="col">Senha</th>
					<th scope="col">Endereço</th>
					<th scope="col">Cidade</th>
					<th scope="col">Bairro</th>
					<th scope="col">CEP</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>Mark</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td>Mark</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td>Mark</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td>@mdo</td>
					<td><button type="button" class="btn btn-outline-primary">Selecionar</button>
						<button type="button" class="btn btn-outline-danger">Deletar</button></td>
				</tr>
			</tbody>
		</table>
	</div>

	<footer class="bg-secondary mt-3">
		<p class="mt-3 mb-1 text-center text-white">Feito por Luann Sapucaia e Felipe Matheus</p>
		<p class="font-italic mb-2 text-center text-white">&copy;Copyrights </p>
	</footer>

	<script type="text/javascript" src="../assets/js/jquery.js"></script>
	<script type="text/javascript" src="https://unpkg.com/@popperjs/core@2.0.0"></script>
	<script type="text/javascript" src="../assets/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../assets/bootstrap/js/bootstrap.bundle.min.js"></script>


</body>

</html>
