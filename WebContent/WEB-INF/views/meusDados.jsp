<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page
	import="java.util.*,
	br.com.jsmartmarket.jpa.dao.ClienteDao,
	br.com.jsmartmarket.jpa.util.JPAUtil,
	javax.persistence.EntityManager"%>

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
		EntityManager em = new JPAUtil().getEntityManager();
		cliente = new ClienteDao(em).buscaLogin(login);
		em.close();
	%>

	<div class="container">

		<!-- Nome e Sobre Nome -->
		<div class=" row red-text text-lighten-2">
			<i class="large material-icons left indigo-text">insert_chart</i>
			<h3>Meus Dados</h3>
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
						name="rg" type="text" class="validate black-text">
					<label for="rg"><h6>
							<b>RG</b>
						</h6></label>
				</div>
			</div>

			<div class="col s2">
				<div class="input-field">
					<input disabled value="<%=cliente.getExpedidor()%>" id="orgao"
						name="expedidor" type="text" 
						class="validate black-text"> <label for="orgao"><h6>
							<b>Org. Expedidor</b>
						</h6></label>
				</div>
			</div>

			<div class="col s3">
				<div class="input-field">
					<input disabled value="<%=cliente.getCpf()%>" id="cpf" name="cpf"
						type="text" class="validate black-text"> <label
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
					<i class="material-icons prefix grey-text text-indigo"> today</i> <input
						disabled value="<%=cliente.getDataNascimento()%>" id="date"
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

			<div class="col s4">
				<div class="input-field">
					<i class="material-icons prefix grey-text text-indigo">
						mode_edit</i> <input disabled value="<%=cliente.getLogradouro()%>"
						id="endereço" name="logradouro" type="text"
						class="validate black-text"> <label for="endereço"><h6>
							<b>Endereço</b>
						</h6></label>
				</div>
			</div>

			<div class="col s1">
				<div class="input-field">
					<input disabled value="<%=cliente.getNumero()%>" id="numero"
						name="numero" type="text" class="validate black-text"> <label
						for="numero"><h6>
							<b>Número</b>
						</h6></label>
				</div>
			</div>

			<div class="col s3">
				<div class="input-field">
					<input disabled value="<%=cliente.getBairro()%>" id="bairro"
						name="bairro" type="text" class="validate black-text"> <label
						for="bairro"><h6>
							<b>Bairro</b>
						</h6></label>
				</div>
			</div>
		</div>

		<!-- cidade -->

		<div class="row">

			<div class="col s4">
				<div class="input-field">
					<i class="material-icons prefix grey-text text-indigo">
						location_on</i> <input disabled value="<%=cliente.getCidade()%>"
						id="cidade" name="cidade" type="text" class="validate black-text">
					<label for="cidade"><h6>
							<b>Cidade</b>
						</h6></label>
				</div>
			</div>

			<div class="col s2">
				<div class="input-field">
					<input disabled value="<%=cliente.getUf()%>" id="uf" name="uf"
						type="text" class="validate black-text"> <label for="uf"><h6>
							<b>UF</b>
						</h6></label>
				</div>
			</div>

			<div class="col s2">
				<div class="input-field">
					<input disabled value="<%=cliente.getCep()%>" id="CEP" name="cep"
						type="text" class="validate black-text"> <label
						for="numero"><h6>
							<b>CEP</b>
						</h6></label>
				</div>
			</div>
		</div>

		<div class="row">

			<div class="col s4">
				<div class="input-field">
					<i class="material-icons prefix grey-text text-indigo">phone</i> <input
						disabled value="<%=cliente.getTelefone()%>" id="residencial"
						name="telefone" type="tel" class="validate black-text"> <label
						for="residencial"><h6>
							<b>Telefone Residencial</b>
							<h6></label>
				</div>
			</div>

			<div class="col s4">
				<div class="input-field">
					<i class="material-icons prefix grey-text text-indigo">stay_primary_portrait</i>
					<input disabled value="<%=cliente.getCelular()%>" id="celular"
						name="celular" type="tel" class="validate black-text"> <label
						for="celular"><h6>
							<b>Telefone Celular</b>
							<h6></label>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col s5">
				<div class="input-field">
					<i class="material-icons prefix grey-text text-indigo">email</i> <input
						disabled value="<%=cliente.getEmail()%>" id="email" name="email"
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
