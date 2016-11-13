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
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
</head>

<body>

	<!-- conteudo do site-->
	<!--          adicionar depois <img class="logo" src="assets/media/img/img.logo.png"></img>         -->

	<nav>
	<div class="nav-wrapper indigo">
		<a href="paginaInicial" class="brand-logo"><img class="image"
			src="assets/media/img/img.logo.png"></a> <a href="#"
			data-activates="mobile-demo" class="button-collapse"><i
			class="material-icons">menu</i></a>
		<ul class="right hide-on-med-and-down">
			<li><a href="paginaInicial">Página Inicial</a></li>
			<li><a href="historia">História</a></li>
			<li><a href="conta">Sua Conta</a></li>
			<li><a
				class="waves-effect waves-light black-text grey btn-large"
				href="logout" id="logout"><i
					class="material-icons right red-text">power_settings_new</i>Logout</a></li>
		</ul>
		<ul class="side-nav" id="mobile-demo">
			<li><a href="paginaInicial">Página Inicial</a></li>
			<li><a href="hitoria">História</a></li>
			<li><a href="conta">Sua Conta</a></li>
			<li><a
				class="waves-effect waves-light black-text grey btn-large"
				href="logout" id="logout"><i
					class="material-icons right red-text">power_settings_new</i>Logout</a></li>
		</ul>
	</div>
	</nav>

	<!-- cards -->

	<div class="col s12">

		<div class="row">
			<div class="row">
				<div class="col s12 m10">
					<h4 class="blue-text text-indigo">Bem vindo</H4>
					
					<H5>
						<div class="blue-text text-indigo">${cliente.nome}
							${cliente.sobrenome}
					</h5>
				
				</div>
			</div>
			<div class="col s12 m0 right">
				<ul id="nav‐mobile" class="right hide‐on‐med‐and‐down">
					<a class="waves‐effect waves‐light btn" href="meusDados">Meus
						Dados </a>
				</ul>
			</div>
		</div>
	</div>

	<table class="responsive-table">
		<thead>
			<tr>
				<th data-field="data">Data da Compra</th>
				<th data-field="valor">Valor da Compra</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="compra" items="${compras}">
				<tr>
					<td>${compra.dataCompra}</td>
					<td>R$ ${compra.valorCompra}</td>
					<td><li><a href="compra?codigo=${compra.codigoCompra}">Detalhes</a></li></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	</div>
	</div>

	<!-- Rodape -->
	<footer class="page-footer indigo">
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