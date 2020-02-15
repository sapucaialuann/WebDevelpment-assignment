<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<jsp:include page="template/head.jsp"/>
	<link rel="stylesheet" type="text/css" href="../assets/css/register.css">
</head>
<body>
	<jsp:include page="template/navbar.jsp"/>
	<main class="mt-5 mb-5 w-75 p-5 section-login">
		<form class="needs-validation" id="form-register" method="POST" action="/registro">
			<h2>Registro</h2>
			<div class="form-group">
				<label form="form-register">Nome *</label>
				<input type="text" class="form-control" minlength="3" maxlength="50" required name="nome">
				<div class="valid-feedback">
					Looks good!
				</div>
			</div>
			<div class="form-group ">
				<label form="form-register">Login *</label>
				<input type="text" class="form-control" required minlength="3" maxlength="20" name="login">
				<div class="valid-feedback">
					Looks good!
				</div>
			</div>
			<div class="form-group ">
				<label form="form-register">Senha *</label>
				<input type="password" class="form-control" required minlength="6" maxlength="20" name="senha">
				<div class="valid-feedback">
					Looks good!
				</div>
			</div>
			<div class="form-group ">
				<label form="form-register">CPF *</label>
				<input type="text" class="form-control" pattern="\d{11}" required name="cpf">
				<div class="valid-feedback">
					Looks good!
				</div>
			</div>
			<div class="form-group ">
				<label form="form-register">Email *</label>
				<input placeholder="email@email.com" minlength="3" maxlength="50" type="email" class="form-control"
					pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required name="email">
			</div>
			<div class="form-group">
				<label form="form-register">Celular *</label>
				<input type="text" class="form-control cel-sp-mask" pattern="\d{10,11}" required name="celular">
			</div>
			<div class="form-row">
				<div class="form-group">    
					<label for="cep">CEP</label>
					<input class="form-control" id="cep" type="text"
                                               pattern="\d{8}" name="cep"/>
				</div>
				<div class="form-group">
					<label class=" form-margin-fix" for="logradouro">Endereço</label>
					<input class="form-control  form-margin-fix" id="logradouro" type="text" minlength="3"
						maxlength="50" name="endereco"/>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group">
					<label for="bairro">Bairro</label>
					<input class="form-control" id="bairro" type="text" name="bairro"/>
				</div>
				<div class="form-group">
					<label class=" form-margin-fix" for="cidade">Cidade</label>
					<input class="form-control  form-margin-fix" id="cidade" type="text" name="cidade"/>
				</div>
			</div>

			<button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"
				type="submit">Cadastrar</button>
		</form>
	</main>
	<jsp:include page="template/footer.jsp"/>
</body>
</html>
