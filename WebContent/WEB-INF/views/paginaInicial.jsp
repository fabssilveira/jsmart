<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<nav>
		<div class="nav-wrapper indigo">
			<a href="#" class="brand-logo center">Bem vindo ao Mundo JSmart
				Market</a>

			<ul id="nav-mobile" class="left hide-on-med-and-down">
				<li><a href="paginainicial.html">P�gina Inicial</a></li>
				<li><a href="historia.html">Hist�ria</a></li>
				<li><a href="conta.html">Sua Conta</a></li>
			</ul>
			<ul id="nav-mobile" class="right hide-on-med-and-down">
				<a class="waves-effect waves-light red-text orange btn-large"
					id="logoff"><i class="material-icons right red-text">power_settings_new</i>Logoff</a>
			</ul>
		</div>

	</nav>

	<div class="slider indigo">
		<ul class="slides">
			<li><img src="assets/media/img/img.sonhando.jpg"> <!-- random image -->
				<div class="caption green-text center-align">
					<h3>JSmart Market!</h3>
					<h5 class="light green-text text-lighten-3">Sonhando alto
						sempre.</h5>
				</div></li>
			<li><img src="assets/media/img/img.desafios.jpg"> <!-- random image -->
				<div class="caption orange-text left-align">
					<h3>Planejamento!</h3>
					<h5 class="light orange-text text-lighten-3">Voc� precisa
						manter o foco em sua jornada para realizar grandes coisas.</h5>
				</div></li>
			<li><img src="assets/media/img/img.arvores.jpg"> <!-- random image -->
				<div class="caption right-align">
					<h3>Conquistas!</h3>
					<h5 class="light grey-text text-lighten-3">N�o basta
						conquistar a sabedoria, � preciso us�-la.</h5>
				</div></li>
			<li><img src="assets/media/img/img.aventura.jpg"> <!-- random image -->
				<div class="caption black-text center-align">
					<h3>Barreiras!</h3>
					<h5 class="light black-text text-lighten-3">Quanto mais
						dif�cil fica, mais pr�ximo est� o sucesso.</h5>
				</div></li>
		</ul>
	</div>

	<div class="row indigo-text">
		<div class="col s7 right">
			<h3>JSmart Market News</h3>
		</div>
	</div>

	<div class="row ">
		<div class="col s4 ">
			<div class="card">
				<div class="card-image">
					<img src="assets/media/img/img.cloud.png"> <span
						class="card-title"></span>
				</div>
				<div class="card-content">
					<p>Estudos monstram que apenas 15% das companhias brasileiras
						n�o rodam solu��es em cloud.</p>
				</div>
			</div>
		</div>

		<div class="col s3">
			<div class="card-panel teal orange darken-1">
				<span class="white-text">A ado��oo da nuvem j� est� quase
					onipresente nas empresas brasileiras. Pelo menos � o que constatou
					uma pesquisa da SolarWinds. Segundo o levantamento, apenas 15% das
					companhias n�o migraram parte de sua TI para um ambiente cloud. Da
					maioria que j� realizou esse movimento, 66% moveram aplicativos,
					36% levaram recursos de armazenamento e 35% migraram seus bancos de
					dados para a nuvem. </span>
			</div>
		</div>

	</div>

	<div class="row">
		<div class="col s3 right">
			<div class="card-panel teal">
				<span class="white-text">A Intel anunciou a compra da
					Yogitech, fabricante de circuitos e software focada em recursos de
					seguran�a para carros aut�nomos, rob�s e equipamentos industriais
					conectados a rede. O valor da transa��o n�o foi revelado. </span>
			</div>
		</div>

		<div class="col s4 right">
			<div class="card">
				<div class="card-image">
					<img src="assets/media/img/img.intel.jpg"> <span
						class="card-title red-text"></span>
				</div>
				<div class="card-content">
					<p>Intel compra empresa focada em seguran�a de IoT, rob�s e
						carros aut�nomos.</p>
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
