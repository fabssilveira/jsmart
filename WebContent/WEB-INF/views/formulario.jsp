<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!--Import materialize.css-->
<link type="text/css" rel="stylesheet"
	href="assets/lib/materialize/css/google_fonts.css"
	media="screen,projection" />

<link type="text/css" rel="stylesheet"
	href="assets/lib/materialize/css/materialize.min.css"
	media="screen,projection" />

<!-- Import JSmartMarket CSS -->
<link type="text/css" rel="stylesheet" href="assets/css/jsmart.css"
	media="screen,projection" />

<!--Let browser know website is optimized for mobile-->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
</head>

<body>

	<nav>
	<div class="nav-wrapper indigo">
		<a href="index.jsp" class="brand-logo"><img class="image"
			src="assets/media/img/img.logo.png"></a> <a href="#"
			data-activates="mobile-demo" class="button-collapse"><i
			class="material-icons">menu</i></a>
		<ul class="right hide-on-med-and-down">

			<li><a
				class="waves-effect waves-light black-text white btn-large"
				href="index.jsp"><i class="material-icons right red-text">fast_rewind</i>Voltar</a></li>
		</ul>
		<ul class="side-nav" id="mobile-demo">

			<li><a
				class="waves-effect waves-light black-text white btn-large"
				href="index.jsp"><i class="material-icons right red-text">fast_rewind</i>Voltar</a></li>
		</ul>
	</div>
	</nav>

	<div class="row col s12 indigo"></div>

	<!-- Nome e Sobre Nome -->
	<div class=" row red-text text-lighten-2">
		<i class="large material-icons left indigo-text ">insert_chart</i>
		<h4>Cadastrando os Meus Dados</h4>
		<P>
		<h5>Cadastro</h5>
	</div>

	<div class="divider black"></div>
	<div class="row"></div>
	<div class="row"></div>
	<div class="container">

		<form class="col s12" action="gravaCliente" method="Post"
			id="form-cadastro">

			<!-- Nome e Sobre Nome -->
			<div class=" row red-text text-lighten-2">
				<h5>Dados Cadastrais</h5>
			</div>

			<div class="row">


				<div class="col s12 m4">
					<div class="input-field">
						<i class="material-icons prefix blue-text text-indigo">perm_identity</i>
						<input id="nome" name="nome" type="text" class="validate" onchange="corrigeNome()">
						<label for="nome"> <b id="lblNome">Nome</b>
						</label>
					</div>
				</div>

				<div class="col s12 m4">
					<div class="input-field">
						<input id="sobrenome" name="sobrenome" type="text"
							class="validate"> <label for="sobrenome"> <b>Sobrenome</b>
						</label>
					</div>
				</div>

			</div>



			<!-- endereÃ§o -->

			<div class="row">

				<div class="col s12 m4">
					<div class="input-field ">
						<i class="material-icons prefix blue-text text-indigo">
							mode_edit</i> <input id="endereço" name="logradouro" type="text"
							class="validate"> <label for="endereço"><h6>
								<b>Endereço</b>
							</h6></label>
					</div>
				</div>

				<div class="col s12 m1">
					<div class="input-field">
						<input id="numero" name="numero" type="text" class="validate">
						<label for="numero"><h6>
								<b>Número</b>
							</h6></label>
					</div>
				</div>

				<div class="col s12 m3">
					<div class="input-field">
						<input id="bairro" name="bairro" type="text" class="validate">
						<label for="bairro"><h6>
								<b>Bairro</b>
							</h6></label>
					</div>
				</div>
			</div>

			<!-- cidade -->

			<div class="row">

				<div class="col s12 m4">
					<div class="input-field">
						<i class="material-icons prefix blue-text text-indigo">
							location_on</i> <input id="cidade" name="cidade" type="text"
							class="validate"> <label for="cidade"><h6>
								<b>Cidade</b>
							</h6></label>
					</div>
				</div>

				<div class="col s6 m2">
					<div class="input-field">
						<select name="uf">
							<option value="" disabled selected>Selecione aqui</option>
							<option value="SP">SP</option>
							<option value="MG">MG</option>
							<option value="RJ">RJ</option>
						</select> <label><h6>
								<b>UF 
							</h6> </b></label>
					</div>
				</div>

				<div class="col s6 m2">
					<div class="input-field">
						<input id="CEP" name="cep" type="text" class="validate"> <label
							for="numero"><h6>
								<b>CEP</b>
							</h6></label>
					</div>
				</div>
			</div>

			<!-- telefone -->

			<div class="row">

				<div class="col s12 m4">
					<div class="input-field">
						<i class="material-icons prefix blue-text text-indigo">phone</i> <input
							id="residencial" name="telefone" type="tel" class="validate" onchange="corrigeTel()">
						<label for="residencial"><h6>
								<b id="lblTel">Telefone Residencial</b>
								<h6></label>
					</div>
				</div>

				<div class="col s12 m4">
					<div class="input-field">
						<i class="material-icons prefix blue-text text-indigo">stay_primary_portrait</i>
						<input id="celular" name="celular" type="tel" class="validate">
						<label for="celular"><h6>
								<b>Telefone Celular</b>
								<h6></label>
					</div>
				</div>
			</div>

			<!-- documentos -->

			<div class="row">

				<div class="col s8 m3">
					<div class="input-field">
						<i class="material-icons prefix blue-text text-indigo">
							done_all</i> <input id="rg" name="rg" type="text" class="validate">
						<label for="rg"><h6>
								<b>RG</b>
							</h6></label>
					</div>
				</div>

				<div class="col s4 m2">
					<div class="input-field">
						<input id="orgao" name="expedidor" type="text" class="validate">
						<label for="orgao"><h6>
								<b>Org. Exped.</b>
							</h6></label>
					</div>
				</div>

				<div class="col s12 m3">
					<div class="input-field">
						<input id="cpf" name="cpf" type="text" class="validate" onchange="corrigeCpf()"> <label
							for="cpf"><h6>
								<b id="lblCpf">CPF</b>
							</h6></label>
					</div>
				</div>
			</div>

			<!-- data de nascimento -->

			<div class="row">

				<div class="col s12 m4">
					<div class="input-field">
						<i class="material-icons prefix blue-text text-indigo"> today</i>
						<input id="date" name="dataNascimento" type="date"
							class="datepicker"> <label for="data"><h6>
								<b>Data de Nascimento</b>
							</h6></label>
					</div>
				</div>
			</div>

			<!-- email -->

			<div class="row">

				<div class="col s12 m5">
					<div class="input-field">
						<i class="material-icons prefix blue-text text-indigo">email</i> <input
							id="email" name="email" type="email" class="validate" onchange="corrigeEmail()"> <label
							for="email" data-error="wrong" data-success="right"><h6>
								<b id="lblEmail">E-mail</b>
							</h6></label>
					</div>
				</div>
			</div>


			<div class="row"></div>
			<div class="row"></div>
			<div class="row"></div>

			<div class="divider black"></div>
			<div class="row"></div>
			<!-- login de acesso -->

			<div class="row red-text text-lighten-2">
				<h4>Dados de Acesso</h4>
			</div>

			<div class="row">


				<div class="col s12 m4">
					<div class="input-field">
						<i class="material-icons prefix green-text">perm_identity</i> <input
							id="login" name="userLogin" type="text" class="validate"
							onchange="testaLogin()"> <label for="login"><h6>
								<b id="lblLogin">Login</b>
							</h6></label>
					</div>
				</div>
			</div>

			<!--dados de acesso-->

			<div class="row">

				<div class="col s12 m4">
					<div class="input-field">
						<i class="material-icons prefix green-text">vpn_key</i> <input
							id="senha" name="senha" type="password" class="validate">
						<label for="senha"><h6>
								<b>Senha</b>
							</h6></label>
					</div>
				</div>

				<div class="col s12 m4">
					<div class="input-field">
						<i class="material-icons prefix green-text">replay</i> <input
							id="confirmasenha" name="confirmaSenha" type="password"
							class="validate" onchange="corrigeSenha()"> <label for="confirmasenha"><h6>
								<b id="lblSenha">Confirmar Senha</b>
							</h6></label>
					</div>
				</div>
			</div>

			<button class="btn waves-effect waves-light" type="submit"
				name="action">
				Enviar <i class="material-icons right">send</i>
			</button>

		</form>
	</div>

	<!-- Rodape -->
	<footer class="page-footer  indigo">
	<div class="footer-copyright">
		<div class="container center">2016 Copyright JSmart Market</div>
	</div>
	</footer>

	<script = type="text/javascript">
		function testaLogin(id) {
			$.get("testaLogin?login=" + $('#login').val(), function(resposta) {
				var lblLogin = document.querySelector("#lblLogin");
				alert('Login já existente! Escolha outro por favor!');
				lblLogin.textContent = "Login"
				lblLogin.style.color = "grey"
				document.getElementById("login").value = "";
			});
		}
		function corrigeNome(){
			var lblNome = document.querySelector("#lblNome");
			lblNome.textContent = "Nome";
			lblNome.style.color = "grey";
		}
		function corrigeCpf(){
			var lblCpf = document.querySelector("#lblCpf");
			lblCpf.textContent = "CPF";
			lblCpf.style.color = "grey";
		}
		function corrigeTel(){
			var lblTel = document.querySelector("#lblTel");
			lblTel.textContent = "Telefone Residencial";
			lblTel.style.color = "grey";
		}
		function corrigeEmail(){
			var lblEmail = document.querySelector("#lblEmail");
			lblEmail.textContent = "E-Mail";
			lblEmail.style.color = "grey";
		}
		function corrigeSenha(){
			var lblSenha = document.querySelector("#lblSenha");
			lblSenha.textContent = "Confirmar Senha";
			lblSenha.style.color = "grey";
		}
	</script>

	<!--Import JavaScript-->
	<script type="text/javascript"
		src="assets/lib/jquery/jquery-2.1.4.min.js"></script>
	<script type="text/javascript"
		src="assets/lib/materialize/js/materialize.min.js"></script>
	<script type="text/javascript" src="assets/js/jsmart.js"></script>
	<script type="text/javascript" src="assets/js/cadastro.js"></script>
</body>
</html>
