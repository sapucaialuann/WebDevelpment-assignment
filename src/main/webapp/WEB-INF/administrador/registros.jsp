<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<jsp:include page="../template/head.jsp"/>
	<link rel="stylesheet" type="text/css" href="../../assets/css/index.css">
	<link rel="stylesheet" type="text/css" href="../../assets/css/register.css">
</head>
<body>
	<jsp:include page="../template/navbar.jsp"/>
	<h1 class="mb-3">Tabelas</h1>
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
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>Mark</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td>@mdo</td>
				</tr>
			</tbody>
		</table>
	</div>

	<div class="container">
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
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>Mark</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td>@mdo</td>
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
	</div>

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
				</tr>
			</tbody>
		</table>
	</div>
	<jsp:include page="../template/footer.jsp"/>
</body>
</html>
