<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page
	import="java.util.*,
	br.com.jsmartmarket.jpa.model.Compra,
	br.com.jsmartmarket.jpa.model.ItensCompra,
	br.com.jsmartmarket.jpa.dao.ItensCompraDao,
	br.com.jsmartmarket.jpa.dao.ProdutoDao,
	br.com.jsmartmarket.jpa.model.Produto"%>

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

		<jsp:useBean id="clienteDao"
			class="br.com.jsmartmarket.jpa.dao.ClienteDao" />
		<jsp:useBean id="compraDao"
			class="br.com.jsmartmarket.jpa.dao.CompraDao" />
		<jsp:useBean id="cliente"
			class="br.com.jsmartmarket.jpa.model.Cliente" />
		<jsp:useBean id="compra"
			class="br.com.jsmartmarket.jpa.model.Compra" />
		<jsp:useBean id="pagamento"
			class="br.com.jsmartmarket.jpa.model.Pagamento" />
		<jsp:useBean id="pagamentoDao"
			class="br.com.jsmartmarket.jpa.dao.PagamentoDao" />
		<jsp:useBean id="calculo"
			class="br.com.jsmartmarket.jpa.controller.CalcularCompra" />

		<%
			String login = "" + session.getAttribute("login");
			String codigoCompra = "" + session.getAttribute("codigoCompra");
			cliente = clienteDao.buscaLogin(login);
			compra = compraDao.buscaSuaCompra(Integer.parseInt(codigoCompra));
			pagamento = pagamentoDao.buscaPagamento(compra.getCodigoPagamento());
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
						<a class="waves‐effect waves‐light btn" href="conta"></i>Voltar</a>
					</ul>
				</div>
			</div>
		</div>

		<div class="row">
			<div lass="row">
				<div class="col s5">
					<h5 class="black-text text-indigo">
						<%="Forma de Pagamento: "+pagamento.getDescricao()%>
					</h5>
				</div>
				<div class="col s4">
					<h5 class="black-text text-indigo">
						<%="Data da Compra: "+compra.getDataCompra()%>
					</h5>
				</div>
				<div class="col s3">
					<h5 class="black-text text-indigo">
						<%="Valor da Compra: R$ "+calculo.calcular(compra.getCodigoCompra())%>
					</h5>
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
			<%
				List<ItensCompra> listaItens = new ItensCompraDao().buscaItens(compra.getCodigoCompra());
			%>
			<%
				for (ItensCompra iten: listaItens) {
					Produto produto = new ProdutoDao().buscaProduto(iten.getCodigoProduto());
			%>
			<tbody>
				<tr>
					<td><%=produto.getDescricao() %></td>
					<td><%=produto.getUnidade() %></td>
					<td><%=iten.getQuantidade() %></td>
					<%String valorUnitario = String.format("%.2f",produto.getValorUnitario()); %>
					<%String valor = String.format("%.2f",(produto.getValorUnitario()*iten.getQuantidade()));%>
					<td><%="R$ "+valorUnitario%></td>
					<td><%="R$ "+valor%></td>
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