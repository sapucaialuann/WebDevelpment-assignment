<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
	<jsp:include page="../template/head.jsp" />
	<link rel="stylesheet" type="text/css" href="../../assets/css/index.css">
	<link rel="stylesheet" type="text/css" href="../../assets/css/register.css">
</head>

<body>
	<jsp:include page="../template/navbar.jsp" />
	<h1 class="mb-3">Tabelas</h1>

	<a href="/administrador/cursos">Cursos</a>
	<a href="/administrador/turmas">Turmas</a>
	<a href="/administrador/instrutores">Instrutores</a>
	<a href="/administrador/alunos">Alunos/a>

	<!-- Matrículas
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
	</div> -->


	<!-- <div class="container">
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
	</div> -->

	<jsp:include page="../template/footer.jsp" />
</body>

</html>