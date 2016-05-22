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
</head>

<body>
	<!-- conteudo do site-->
	<!--          adicionar depois <img class="logo" src="assets/media/img/img.logo.png"></img>         -->

	<nav>
		<div class="nav-wrapper indigo">
			<a href="#" class="brand-logo center orange-text">Pedidos JSmart
				Market</a>
			<ul id="nav-mobile" class="left hide-on-med-and-down">
				<li><a href="paginainicial.html">Página Inicial</a></li>
				<li><a href="historia.html">História</a></li>
				<li><a href="conta.html">Sua Conta</a></li>
			</ul>
			<ul id="nav-mobile" class="right hide-on-med-and-down">
				<a class="waves-effect waves-light red-text orange btn-large center"
					id="logoff"><i class="material-icons right red-text">power_settings_new</i>Logoff</a>
			</ul>
		</div>

	</nav>

	<!-- cards -->

	<div class="col s12">
		<div class="row">
			<div class="row">
				<div class="col s2">
					<div class="input-field">
						<i class="material-icons prefix blue-text text-indigo">toc</i> <input
							id="nome" type="text" class="validate"> <label for="nome">
							<b>Digite o Pedido</b>
						</label>
					</div>
				</div>
				<div class="col s2 right">

					<ul id="nav-mobile" class="right hide-on-med-and-down">
						<a class="waves-effect waves-light btn"><i
							class="material-icons right">search</i>Procurar</a>
					</ul>
				</div>
			</div>
		</div>

		<table>
			<thead>
				<tr>
					<th data-field="id">Nome</th>
					<th data-field="name">Produto</th>
					<th data-field="price">Preçoo Unitário</th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td>Skol 350ml</td>
					<td>Cerveja</td>
					<td>R$ 1,99</td>
				</tr>
				<tr>
					<td>Coca-Cola 2L</td>
					<td>Refrigerante</td>
					<td>R$ 5,99</td>
				</tr>
				<tr>
					<td>Ketchup Quero 400g</td>
					<td>Condimento</td>
					<td>R$ 3,19</td>
				</tr>
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