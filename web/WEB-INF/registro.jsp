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
	<jsp:include page="template/footer.jsp"/>
</body>
</html>
