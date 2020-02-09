<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="pt">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="stylesheet" type="text/css" href="assets/css/reset.css">
	<link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="assets/css/sobre.css">
	<link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap-grid.css">
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

	<div class="titulo-sobre">
		<h1>Sobre nós</h1>
	</div>

	<div class="about-text">
		<p class="text-sm-left">Somos uma instituição que oferece os melhores cursos desde 1991.</p>
	</div>

	<footer class="bg-secondary mt-3 fixed-bottom">
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
