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
	
			
	<div class="slider indigo">
		<ul class="slides">
			<li><img src="assets/media/img/img.sonhando.png"> <!-- random image -->
				<div class="caption green-text center-align">
					<h3>JSmart Market!</h3>
					<h5 class="light green-text text-lighten-3">O carrinho de supermercado inteligente.</h5>
				</div></li>
			<li><img src="assets/media/img/img.desafios.png"> <!-- random image -->
				<div class="caption orange-text left-align">
					<h3>Planejamento!</h3>
					<h5 class="light orange-text text-lighten-3">Você precisa
						manter o foco em sua jornada para realizar grandes coisas.</h5>
				</div></li>
			<li><img src="assets/media/img/img.arvores.png"> <!-- random image -->
				<div class="caption right-align">
					<h3>Conquistas!</h3>
					<h5 class="light grey-text text-lighten-3">Não basta
						conquistar a sabedoria, É preciso usá-la.</h5>
				</div></li>
			<li><img src="assets/media/img/img.aventura.png"> <!-- random image -->
				<div class="caption black-text center-align">
					<h3>Barreiras!</h3>
					<h5 class="light black-text text-lighten-3">Quanto mais
						difícil fica, mais próximo está o sucesso.</h5>
				</div></li>
		</ul>
	</div>
	
	
			<div class="row"> </div>
			<div class="row"> </div>
			<div class="divider"> </div>

	<div class="row indigo-text center">
		<div class="col s12 ">
			<h3>JSmart Market News</h3>
		</div>
	</div>

	<div class="row ">
		<div class="col s12 m4 ">
			<div class="card">
				<div class="card-image">
					<img src="assets/media/img/img.cloud.png"> <span
						class="card-title"></span>
				</div>
				<div class="card-content">
					<p>Estudos monstram que apenas 15% das companhias brasileiras
						não rodam soluções em cloud.</p>
				</div>
			</div>
		</div>

		<div class="col s12 m3">
			<div class="card-panel teal orange darken-1">
				<span class="white-text">A adoção da nuvem já está quase
					onipresente nas empresas brasileiras. Pelo menos é o que constatou
					uma pesquisa da SolarWinds. Segundo o levantamento, apenas 15% das
					companhias não migraram parte de sua TI para um ambiente cloud. Da
					maioria que já realizou esse movimento, 66% moveram aplicativos,
					36% levaram recursos de armazenamento e 35% migraram seus bancos de
					dados para a nuvem. </span>
			</div>
		</div>

	</div>


			<div class="row"> </div>
			<div class="divider"> </div>
			<div class="row"> </div>
			<div class="row"> </div>
			
	<div class="row">
		<div class="col s12 m3 right">
			<div class="card-panel teal">
				<span class="white-text">A Intel anunciou a compra da
					Yogitech, fabricante de circuitos e software focada em recursos de
					segurança para carros autônomos, robôs e equipamentos industriais
					conectados a rede. O valor da transação não foi revelado. </span>
			</div>
		</div>

		<div class="col s12 m4 right">
			<div class="card">
				<div class="card-image">
					<img src="assets/media/img/img.intel.png"> <span
						class="card-title red-text"></span>
				</div>
				<div class="card-content">
					<p>Intel compra empresa focada em segurança de IoT, robôs e
						carros autônomos.</p>
				</div>
			</div>
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
