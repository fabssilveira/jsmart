<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page
	import="java.util.*,
	br.com.jsmartmarket.jpa.model.Compra,
	br.com.jsmartmarket.jpa.model.ItensCompra"%>

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
	<jsp:useBean id="compraDao"
		class="br.com.jsmartmarket.jpa.dao.CompraDao" />
	<jsp:useBean id="cliente" class="br.com.jsmartmarket.jpa.model.Cliente" />
	<jsp:useBean id="calculo"
		class="br.com.jsmartmarket.jpa.controller.CalcularCompra" />

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
				href="logoff" id="logoff"><i
				class="material-icons right red-text">power_settings_new</i>Logoff</a>
		</ul>
	</div>

	</nav>

	<!-- cards -->

	<div class="col s12">

		<%
			String login = "" + session.getAttribute("login");
		%>
		<%
			cliente = clienteDao.buscaLogin(login);
		%>

		<div class="row">
			<div class="row">
				<div class="col s10">
					<h4 class="blue-text text-indigo"> 
						<%="Bem vindo " + cliente.getNome() + " " + cliente.getSobrenome()%>
					</h4>
				</div>
				<div class="col s2 right">
					<ul id="nav‐mobile" class="right hide‐on‐med‐and‐down">
						<a class="waves‐effect waves‐light btn" href="meusDados"></i>Cadastro</a>
					</ul>
				</div>
			</div>
		</div>

		<table>
			<thead>
				<tr>
					<th data-field="data">Data da Compra</th>
					<th data-field="valor">Valor da Compra</th>
				</tr>
			</thead>
			<%
				List<Compra> compras = compraDao.buscaCompras(cliente.getCodigoCliente());
			%>
			<%
				for (Compra compra : compras) {
			%>
			<tbody>
				<tr>
					<td><%=compra.getDataCompra()%></td>
					<td><%=calculo.calcular(compra.getCodigoCompra())%>
					<td><li><a href="compra?codigo=<%=compra.getCodigoCompra() %>">Detalhes</a></li></td>
				</tr>
			</tbody>
			<%
				}
			%>
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