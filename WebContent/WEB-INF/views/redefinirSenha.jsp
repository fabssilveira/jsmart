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
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
</head>

<body>

	<nav>
	 <div class="nav-wrapper indigo">
      <a href="paginainicial.html" class="brand-logo"><img class="image" src="assets/media/img/img.logo.png"></a>
      <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
      <ul class="right hide-on-med-and-down">
        
		<li><a class="waves-effect waves-light black-text white btn-large"
					href="logout"
					id="logout"><i class="material-icons right red-text">fast_rewind</i>Voltar</a></li>
      </ul>
      <ul class="side-nav" id="mobile-demo">
        
		<li><a class="waves-effect waves-light black-text white btn-large"
					href="logout"
					id="logout"><i class="material-icons right red-text">fast_rewind</i>Voltar</a></li>
      </ul>
    </div>
  </nav>

	<div class="row col s12 indigo"></div>

	<div class=" row red-text text-lighten-2">
				<i class="large material-icons left indigo-text ">settings</i>
				<h4>Redefinir Senha</h4>
				<P><h5>Alteração</h5>
			</div>
						
			<div class="divider black"> </div>
			<div class="row"> </div>
			<div class="row"> </div>
	<div class="container">

		<form class="col s12" action="gravaCliente" method="Post"
			id="form-cadastro">

			

			<div class="row">

				<div class="col s12 m4">
					<div class="input-field">
						<i class="material-icons prefix orange-text">perm_identity</i> <input
							id="login" name="userLogin" type="text" class="validate">
						<label for="login"><h6>
								<b id="lblLogin">Login</b>
							</h6></label>
					</div>
				</div>
			</div>

			<!--dados de acesso-->

			<div class="row">

				<div class="col s12 m4">
					<div class="input-field">
						<i class="material-icons prefix orange-text">vpn_key</i> <input
							id="senha" name="senha" type="password" class="validate">
						<label for="senha"><h6>
								<b>Senha Atual</b>
							</h6></label>
					</div>
				</div>
				
				</div>
	
				<div class="row"> </div>
				<div class="divider"> </div>
				<div class="row red-text text-lighten-2">Digite para redifinir uma nova senha </div> 
				
								
				<div class="row">
				<div class="col s12 m4">
					<div class="input-field">
						<i class="material-icons prefix green-text">replay</i> <input
							id="novasenha" name="novaSenha" type="password"
							class="validate"> <label for="novasenha"><h6>
								<b id="lblNovaSenha">Nova Senha</b>
							</h6></label>
					</div>
				</div>
				</div>
				
				<div class="row">
				<div class="col s12 m4">
					<div class="input-field">
						<i class="material-icons prefix green-text">done</i> <input
							id="confirmasenha" name="confirmaSenha" type="password"
							class="validate"> <label for="confirmasenha"><h6>
								<b id="lblSenha">Confirmar Nova Senha</b>
							</h6></label>
					</div>
				</div>
				</div>

			<button class="btn waves-effect waves-light" type="submit"
				name="action">
				Enviar <i class="material-icons right">send</i>
			</button>

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
