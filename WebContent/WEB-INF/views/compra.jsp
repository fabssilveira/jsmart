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
		<a href="#" class="brand-logo center orange-text">Pedidos JSmart
			Market</a>
		<ul id="nav-mobile" class="left hide-on-med-and-down">
			<li><a href="paginaInicial">Página Inicial</a></li>
			<li><a href="historia">História</a></li>
			<li><a href="conta">Sua Conta</a></li>
		</ul>
		<ul id="nav-mobile" class="right hide-on-med-and-down">
			<a class="waves-effect waves-light red-text orange btn-large center"
				href="logout" id="logout"><i
				class="material-icons right red-text">power_settings_new</i>Logout</a>
		</ul>
	</div>

	</nav>

	<!-- cards -->

	<div class="col s12">

		<div class="row">
			<div class="row">
				<div class="col s10">
					<h4 class="blue-text text-indigo">Bem vindo ${cliente.nome}
						${cliente.sobrenome}</h4>
				</div>
				<div class="col s2 right">
					<ul id="nav‐mobile" class="right hide‐on‐med‐and‐down">
						<a class="waves‐effect waves‐light btn" href="conta"></i>Voltar</a>
					</ul>
				</div>
			</div>
		</div>

		<div class="row">
			<div lass="row">
				<div class="col s5">
					<h5 class="black-text text-indigo">Forma de Pagamento:
						${pagamento.descricao}</h5>
				</div>
				<div class="col s4">
					<h5 class="black-text text-indigo">Data da Compra:
						${compra.dataCompra}</h5>
				</div>
				<div class="col s3">
					<h5 class="black-text text-indigo">Valor da Compra: R$
						${compra.valorCompra}</h5>
				</div>
			</div>
		</div>
		<table>
			<thead>
				<tr>
					<th data-field="descricao">Descrição</th>
					<th data-field="unidade">Unidade</th>
					<th data-field="quantidade">Quantidade</th>
					<th data-field="valorUnitario">Valor Unitário</th>
					<th data-field="total">Valor Total</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach var="itemDaCompra" items="${itemDaCompra}">
					<tr>
						<td>${itemDaCompra.descricao}</td>
						<td>${itemDaCompra.unidade}</td>
						<td>${itemDaCompra.quantidade}</td>
						<td>${itemDaCompra.valorUnitario}</td>
						<td>${itemDaCompra.valor}</td>
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