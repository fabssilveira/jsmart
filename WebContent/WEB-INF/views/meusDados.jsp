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
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>

<body>

	<nav>
	<div class="nav-wrapper indigo">
		<a href="paginaInicial" class="brand-logo"><img class="image"
			src="assets/media/img/img.logo.png"></a> <a href="#"
			data-activates="mobile-demo" class="button-collapse"><i
			class="material-icons">menu</i></a>
		<ul class="right hide-on-med-and-down">

			<li><a
				class="waves-effect waves-light black-text white btn-large"
				href="conta" ><i
					class="material-icons right red-text">fast_rewind</i>Voltar</a></li>
		</ul>
		<ul class="side-nav" id="mobile-demo">

			<li><a
				class="waves-effect waves-light black-text white btn-large"
				href="conta" ><i
					class="material-icons right red-text">fast_rewind</i>Voltar</a></li>
		</ul>
	</div>
	</nav>

	<div class="row col s12 indigo"></div>

	<div class=" row red-text text-lighten-2">
				<i class="large material-icons left indigo-text ">recent_actors</i>
				<h3>Meus Dados</h3>
				<P><h5>Alteração</h5>
			</div>
						
			<div class="divider black"> </div>
			<div class="row"> </div>
			<div class="row"> </div>
	

	<div class="container">

			<form class="col s12" action="alteraCliente" method="Post">

			
			
			<div class=" row red-text text-lighten-2">
				<h5>Dados Cadastrais</h5>
			</div>
			
			<!-- Nome e Sobre Nome -->
		
			<div class="row">
			<div class="col s12 m4">
				<div class="input-field">
					<i class="material-icons prefix grey-text text-indigo">perm_identity</i>
					<input disabled value="${cliente.nome}" id="nome"
						name="nome" type="text" class="validate black-text"> <label
						for="nome"> <b>Nome</b>
					</label>
				</div>
			</div>

			<div class="col s12 m4">
				<div class="input-field">
					<input disabled value="${cliente.sobrenome}" id="sobrenome"
						name="sobrenome" type="text" class="validate black-text">
					<label for="sobrenome"> <b>Sobrenome</b>
					</label>
				</div>
			</div>
			</div>

		

		<!-- documentos -->

		<div class="row">

			<div class="col s8 m3">
				<div class="input-field">
					<i class="material-icons prefix grey-text text-indigo">
						done_all</i> <input disabled value="${cliente.rg}" id="rg"
						name="rg" type="text" class="validate black-text">
					<label for="rg"><h6>
							<b>RG</b>
						</h6></label>
				</div>
			</div>

			<div class="col s4 m2">
				<div class="input-field">
					<input disabled value="${cliente.expedidor}" id="orgao"
						name="expedidor" type="text" 
						class="validate black-text"> <label for="orgao"><h6>
							<b>Org. Expedidor</b>
						</h6></label>
				</div>
			</div>

			<div class="col s12 m3">
				<div class="input-field">
					<input disabled value="${cliente.cpf}" id="cpf" name="cpf"
						type="text" class="validate black-text"> <label
						for="cpf"><h6>
							<b>CPF</b>
						</h6></label>
				</div>
			</div>
		</div>

		<!-- data de nascimento -->

		<div class="row">

			<div class="col s12 m4">
				<div class="input-field">
					<i class="material-icons prefix grey-text text-indigo"> today</i> <input
						disabled value="${cliente.dataNascimento}" id="date"
						name="dataNascimento" type="text" class="black-text"> <label
						for="data"><h6>
							<b>Data de Nascimento</b>
						</h6></label>
				</div>
			</div>
		</div>

		<div class=" row red-text text-lighten-2">
			<h5>Endereço</h5>
		</div>

		<div class="row">

			<div class="col s12 m4">
				<div class="input-field">
					<i class="material-icons prefix grey-text text-indigo">
						mode_edit</i> <input disabled value="${cliente.logradouro}"
						id="endereço" name="logradouro" type="text"
						class="validate black-text"> <label for="endereço"><h6>
							<b>Endereço</b>
						</h6></label>
				</div>
			</div>

			<div class="col s12 m1">
				<div class="input-field">
					<input disabled value="${cliente.numero}" id="numero"
						name="numero" type="text" class="validate black-text"> <label
						for="numero"><h6>
							<b>Número</b>
						</h6></label>
				</div>
			</div>

			<div class="col s12 m3">
				<div class="input-field">
					<input disabled value="${cliente.bairro}" id="bairro"
						name="bairro" type="text" class="validate black-text"> <label
						for="bairro"><h6>
							<b>Bairro</b>
						</h6></label>
				</div>
			</div>
		</div>

		<!-- cidade -->

		<div class="row">

			<div class="col s12 m4">
				<div class="input-field">
					<i class="material-icons prefix grey-text text-indigo">
						location_on</i> <input disabled value="${cliente.cidade}"
						id="cidade" name="cidade" type="text" class="validate black-text">
					<label for="cidade"><h6>
							<b>Cidade</b>
						</h6></label>
				</div>
			</div>

			<div class="col s6 m2">
				<div class="input-field">
					<input disabled value="${cliente.uf}" id="uf" name="uf"
						type="text" class="validate black-text"> <label for="uf"><h6>
							<b>UF</b>
						</h6></label>
				</div>
			</div>

			<div class="col s6 m2">
				<div class="input-field">
					<input disabled value="${cliente.cep}" id="CEP" name="cep"
						type="text" class="validate black-text"> <label
						for="numero"><h6>
							<b>CEP</b>
						</h6></label>
				</div>
			</div>
		</div>

		<div class="row">

			<div class="col s12 m4">
				<div class="input-field">
					<i class="material-icons prefix grey-text text-indigo">phone</i> <input
						disabled value="${cliente.telefone}" id="residencial"
						name="telefone" type="tel" class="validate black-text"> <label
						for="residencial"><h6>
							<b>Telefone Residencial</b>
							<h6></label>
				</div>
			</div>

			<div class="col s12 m4">
				<div class="input-field">
					<i class="material-icons prefix grey-text text-indigo">stay_primary_portrait</i>
					<input disabled value="${cliente.celular}" id="celular"
						name="celular" type="tel" class="validate black-text"> <label
						for="celular"><h6>
							<b>Telefone Celular</b>
							<h6></label>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col s12 m5">
				<div class="input-field">
					<i class="material-icons prefix grey-text text-indigo">email</i> <input
						disabled value="${cliente.email}" id="email" name="email"
						type="email" class="validate black-text"> <label
						for="email" data-error="wrong" data-success="right"><h6>
							<b>E-mail</b>
						</h6></label>
				</div>
			</div>
			<a class="waves-effect waves-light btn" href="alteracaoDados"><i
				class="material-icons left">settings</i>Alterar Dados</a>
		</div>

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
