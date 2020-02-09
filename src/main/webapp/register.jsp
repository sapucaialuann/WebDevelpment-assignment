<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="pt">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta charset="UTF-8">
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
				<li class="nav-item"><a class="nav-link" href="comments.jsp">Comentários</a></li>
				<li class="nav-item"><a class="nav-link" href="register.jsp">Registro</a></li>
				<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
				<li class="nav-item"><a class="nav-link" href="table.jsp">Tabelas</a></li>
			</ul>
		</div>
	</header>

	<main class="mt-5 mb-5 w-75 p-5 section-login">
		<form class="needs-validation" id="form-register">
			<h2>Registro</h2>
			<!-- Nome -->
			<div class="form-group">
				<label form="form-register">Nome</label>
				<input type="text" class="form-control" minlength="3" maxlength="50" required>
				<div class="valid-feedback">
					Looks good!
				</div>
			</div>
			<!-- Login -->
			<div class="form-group ">
				<label form="form-register">Username</label>
				<input type="text" class="form-control" required minlength="3" maxlength="20">
				<div class="valid-feedback">
					Looks good!
				</div>
			</div>
			<!-- CPF -->
			<div class="form-group ">
				<label form="form-register">CPF</label>
				<input type="text" class="form-control cpf-mask" data-mask="000.000.000-00"
					placeholder="Ex.: 000.000.000-00" length="11" required>
				<div class="valid-feedback">
					Looks good!
				</div>
			</div>
			<!-- Email -->
			<div class="form-group ">
				<label form="form-register">Email</label>
				<input placeholder="email@email.com" minlength="3" maxlength="50" type="email" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
			</div>
			<!-- Senha -->
			<div class="form-group ">
				<label form="form-register">Password</label>
				<input type="password" class="form-control" required minlength="3" maxlength="255">
			</div>
			<!-- Telefone com DDD -->
			<div class="form-group">
				<label form="form-register">Celular</label>
				<input type="text" class="form-control cel-sp-mask" placeholder="Ex.: (00) 00000-0000"
					data-mask="(00) 00000-0000" minlength="10" maxlength="11" required>
			</div>
			<!-- ENDEREÇO -->
			<div class="form-row">
				<!-- CEP -->
				<div class="form-group">
					<label for="cep">CEP</label>
					<input class="form-control" length="9" id="cep" type="text" required />
				</div>
				<!-- Rua -->
				<div class="form-group">
					<label class=" form-margin-fix" for="logradouro">Endereço</label>
					<input class="form-control  form-margin-fix" id="logradouro" type="text" required minlength="3"
						maxlength="50" />
				</div>
			</div>
			<!-- Número do endereço -->
			<div class="form-row">
				<div class="form-group">
					<label for="numero">Número</label>
					<input class="form-control" id="numero" type="text" required />
				</div>
				<div class="form-group">
					<label class=" form-margin-fix" for="complemento">Complemento</label>
					<input class="form-control  form-margin-fix" id="complemento" type="text" />
				</div>
			</div>
			<!-- Bairro e cidade -->
			<div class="form-row">
				<div class="form-group">
					<label for="bairro">Bairro</label>
					<input class="form-control" id="bairro" type="text" required />
				</div>
				<div class="form-group">
					<label class=" form-margin-fix" for="cidade">Cidade</label>
					<input class="form-control  form-margin-fix" id="cidade" type="text" required />
				</div>
			</div>
			<!-- Estado -->
			<div class="form-group">
				<label for="uf">Estado</label>
				<select id="uf">
					<option value="AC">Acre</option>
					<option value="AL">Alagoas</option>
					<option value="AP">Amapá</option>
					<option value="AM">Amazonas</option>
					<option value="BA">Bahia</option>
					<option value="CE">Ceará</option>
					<option value="DF">Distrito Federal</option>
					<option value="ES">Espírito Santo</option>
					<option value="GO">Goiás</option>
					<option value="MA">Maranhão</option>
					<option value="MT">Mato Grosso</option>
					<option value="MS">Mato Grosso do Sul</option>
					<option value="MG">Minas Gerais</option>
					<option value="PA">Pará</option>
					<option value="PB">Paraíba</option>
					<option value="PR">Paraná</option>
					<option value="PE">Pernambuco</option>
					<option value="PI">Piauí</option>
					<option value="RJ">Rio de Janeiro</option>
					<option value="RN">Rio Grande do Norte</option>
					<option value="RS">Rio Grande do Sul</option>
					<option value="RO">Rondônia</option>
					<option value="RR">Roraima</option>
					<option value="SC">Santa Catarina</option>
					<option value="SP">São Paulo</option>
					<option value="SE">Sergipe</option>
					<option value="TO">Tocantins</option>
				</select>
			</div>
			<!-- Termos e condições -->
			<div class="form-group">
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
					<label form="form-register" class="form-check-label">
						Concordo com os termos de serviço
					</label>
					<div class="invalid-feedback">
						You must agree before submitting.
					</div>
				</div>
			</div>

			<button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"
				type="submit">Cadastrar!</button>
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
	<script type="text/javascript">
		$("#cep").focusout(function () {
			//Início do Comando AJAX
			$.ajax({
				//O campo URL diz o caminho de onde virá os dados
				//É importante concatenar o valor digitado no CEP
				url: 'https://viacep.com.br/ws/' + $(this).val() + '/json/unicode/',
				//Aqui você deve preencher o tipo de dados que será lido,
				//no caso, estamos lendo JSON.
				dataType: 'json',
				//SUCESS é referente a função que será executada caso
				//ele consiga ler a fonte de dados com sucesso.
				//O parâmetro dentro da função se refere ao nome da variável
				//que você vai dar para ler esse objeto.
				success: function (resposta) {
					//Agora basta definir os valores que você deseja preencher
					//automaticamente nos campos acima.
					$("#logradouro").val(resposta.logradouro);
					$("#complemento").val(resposta.complemento);
					$("#bairro").val(resposta.bairro);
					$("#cidade").val(resposta.localidade);
					$("#uf").val(resposta.uf);
					//Vamos incluir para que o Número seja focado automaticamente
					//melhorando a experiência do usuário
					$("#numero").focus();
				}
			});
		});
	</script>

</body>

</html>