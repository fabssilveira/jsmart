<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
</head>

<body>

	<jsp:useBean id="clienteDao"
		class="br.com.jsmartmarket.jpa.dao.ClienteDao" />
	<jsp:useBean id="cliente" class="br.com.jsmartmarket.jpa.model.Cliente" />

	<nav>
	</ul>
	<ul id="nav-mobile" class="left hide-on-med-and-down">
		<a class="waves-effect red-text white btn-large center-right"
			href="conta"><i class="material-icons right red-text">fast_rewind</i>Voltar</a>
	</ul>
	<div class="nav-wrapper ">

		<div class="row right">
			<img class="logo col s3" src="assets/media/img/img.logo.png"></img>
			<h5>JSmart Market</h5>
		</div>
	</div>
	</nav>

	<div class="row col s12 indigo"></div>

	<%
		String login = "" + session.getAttribute("login");
	%>
	<%
		cliente = clienteDao.buscaLogin(login);
	%>

	<div class="container">
		<form class="col s12" action="alteraCliente" method="Post">

			<!-- Nome e Sobre Nome -->
			<div class=" row red-text text-lighten-2">
				<i class="large material-icons left indigo-text">insert_chart</i>
				<h3>Meus Dados - Alterar Endereço e Contato</h3>
			</div>


			<div class=" row red-text text-lighten-2">
				<h5>Dados Cadastrais</h5>
			</div>


			<div class="row">

				<div class="col s4">
					<div class="input-field">
						<i class="material-icons prefix grey-text text-indigo">perm_identity</i>
						<input disabled value="<%=cliente.getNome()%>" id="nome"
							name="nome" type="text" class="validate black-text"> <label
							for="nome"> <b>Nome</b>
						</label>
					</div>
				</div>

				<div class="col s4">
					<div class="input-field">
						<input disabled value="<%=cliente.getSobrenome()%>" id="sobrenome"
							name="sobrenome" type="text" class="validate black-text">
						<label for="sobrenome"> <b>Sobrenome</b>
						</label>
					</div>
				</div>

			</div>

			<!-- documentos -->

			<div class="row">

				<div class="col s3">
					<div class="input-field">
						<i class="material-icons prefix grey-text text-indigo">
							done_all</i> <input disabled value="<%=cliente.getRg()%>" id="rg"
							name="rg" type="text" length="20" class="validate black-text">
						<label for="rg"><h6>
								<b>RG</b>
							</h6></label>
					</div>
				</div>

				<div class="col s2">
					<div class="input-field">
						<input disabled value="<%=cliente.getExpedidor()%>" id="orgao"
							name="expedidor" type="text" length="5"
							class="validate black-text"> <label for="orgao"><h6>
								<b>Org. Expedidor</b>
							</h6></label>
					</div>
				</div>

				<div class="col s3">
					<div class="input-field">
						<input disabled value="<%=cliente.getCpf()%>" id="cpf" name="cpf"
							type="text" length="14" class="validate black-text"> <label
							for="cpf"><h6>
								<b>CPF</b>
							</h6></label>
					</div>
				</div>
			</div>

			<!-- data de nascimento -->

			<div class="row">

				<div class="col s4">
					<div class="input-field">
						<i class="material-icons prefix grey-text text-indigo"> today</i>
						<input disabled value="<%=cliente.getDataNascimento()%>" id="date"
							name="dataNascimento" type="text" class="black-text"> <label
							for="data"><h6>
								<b>Data de Nascimento</b>
							</h6></label>
					</div>
				</div>
			</div>

			<div class=" row red-text text-lighten-2">
				<h4>Endereço</h4>
			</div>
			<!-- endereÃ§o -->

			<div class="row">

				<div class="col s4">
					<div class="input-field">
						<i class="material-icons prefix orange-text text-orange">
							mode_edit</i> <input id="endereço" name="logradouro" type="text"
							class="validate"> <label for="endereço"><h6>
								<b>Endereço</b>
							</h6></label>
					</div>
				</div>

				<div class="col s1">
					<div class="input-field">
						<input id="numero" name="numero" type="text" class="validate">
						<label for="numero"><h6>
								<b>Número</b>
							</h6></label>
					</div>
				</div>

				<div class="col s3">
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

				<div class="col s4">
					<div class="input-field">
						<i class="material-icons prefix orange-text text-indigo">
							location_on</i> <input id="cidade" name="cidade" type="text"
							class="validate"> <label for="cidade"><h6>
								<b>Cidade</b>
							</h6></label>
					</div>
				</div>

				<div class="col s2">
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

				<div class="col s2">
					<div class="input-field">
						<input id="CEP" name="cep" type="text" length="10"
							class="validate"> <label for="numero"><h6>
								<b>CEP</b>
							</h6></label>
					</div>
				</div>
			</div>

			<!-- telefone -->

			<div class="row">

				<div class="col s4">
					<div class="input-field">
						<i class="material-icons prefix orange-text text-indigo">phone</i>
						<input id="residencial" name="telefone" type="tel"
							class="validate"> <label for="residencial"><h6>
								<b>Telefone Residencial</b>
								<h6></label>
					</div>
				</div>

				<div class="col s4">
					<div class="input-field">
						<i class="material-icons prefix orange-text text-indigo">stay_primary_portrait</i>
						<input id="celular" name="celular" type="tel" class="validate">
						<label for="celular"><h6>
								<b>Telefone Celular</b>
								<h6></label>
					</div>
				</div>
			</div>

			<div class="row">

				<div class="col s5">
					<div class="input-field">
						<i class="material-icons prefix orange-text text-indigo">email</i>
						<input id="email" name="email" type="email" class="validate">
						<label for="email" data-error="wrong" data-success="right"><h6>
								<b>E-mail</b>
							</h6></label>
					</div>
				</div>
				<a class="waves-effect orange btn modal-trigger" href="#modal2"><i
					class="material-icons right"></i>Alterar Dados</a>

				<div id="modal2" class="modal">
					<div class="modal-content center">

						<h4>Confirmação de Login</h4>

						<div class="row "></div>

						<div class="row black white-text">
							<div class="input-field col s11">
								<i class="material-icons prefix indigo-text">account_circle</i>
								<input id="icon_prefix" type="text" name="userLogin"
									class="validate"> <label for="icon_prefix"></label>
							</div>
						</div>

						<div class="row black white-text">
							<div class="input-field col s11 ">
								<i class="material-icons prefix indigo-text">vpn_key</i> <input
									id="icon_prefix" type="password" name="senha" class="validate">
								<label for="icon_prefix"></label>
							</div>
						</div>

						<div class="modal-footer indigo">
							<button type="submit" name="action"
								class=" modal-action modal-close indigo white-text btn-flat">OK</button>
						</div>

					</div>
				</div>

			</div>
		</form>
	</div>
	
	<!-- Rodape -->
	<footer class="page-footer  indigo">
	<div class="footer-copyright">
		<div class="container center">2016 Copyright JSmart Market</div>
	</div>
	</footer>

	<!--Import JavaScript-->
	<script type="text/javascript"
		src="assets/lib/jquery/jquery-2.1.4.min.js"></script>
	<script type="text/javascript"
		src="assets/lib/materialize/js/materialize.min.js"></script>

	<script type="text/javascript" src="assets/js/jsmart.js"></script>
</body>
</html>
