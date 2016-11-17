<!DOCTYPE html>
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
			<form class="" action="login" method="post">
				<div class="row">
					<div class="col s12">
						<div class="input-image">

							<img class="image" src="assets/media/img/img.logo.png"><b></b>
							<a class="waves-effect red btn modal-trigger right"
								href="#modal1">Login / Cadastro</a>
						</div>

						<!-- Modal Trigger -->




						<div id="modal1" class="modal">
							<div class="modal-content center">

								<h4>Acesso</h4>

								<div class="row">


									<div class="col s12 m12 indigo darken-4">
										<div class="input-field col s11 m11">
											<i class="material-icons prefix indigo-text">account_circle</i>
											<input id="icon_prefix" type="text" name="userLogin"
												class="validate"> <label for="icon_prefix"></label>
										</div>
									</div>

									<div class="row"></div>

									<div class="col s12 m12 indigo darken-4">
										<div class="input-field col s11 m11">
											<i class="material-icons prefix indigo-text">vpn_key</i> <input
												id="icon_prefix" type="password" name="senha"
												class="validate"> <label for="icon_prefix"></label>
										</div>
									</div>
								</div>



								<div class="modal-footer indigo">
									<button type="submit" name="action"
										class=" modal-action modal-close indigo white-text indigo darken-4 btn-flat col s4 m4">Entrar</button>
									<a href="formulario"
										class=" modal-action modal-close indigo orange-text indigo darken-1 btn-flat left col s6 m3"><b>Cadastrar</b></a>
								</div>

								<div class="row"></div>
								<div class="divider"></div>
								<a href="esqueciSenha"
									class=" modal-action modal-close indigo orange-text text-darken-2 btn-flat col s8 m3">Esqueci
									a senha</a>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</nav>


	<!-- Conteudo do Site -->
	<div id="content">
		<!-- Cabecalho conteudo -->


		<div class="row center blue-text">

			<h3>Ofertas</h3>
		</div>
		<div class="row">
			<div class="col s12 m3">
				<div class="card">
					<div class="card-image waves-effect waves-block waves-light">
						<img class="activator" src="assets/media/img/img.cerveja.png">
					</div>
					<div class="card-content">
						<span class="card-title activator grey-text text-darken-4">Heineken
							<i class="material-icons right">more_vert</i>
						</span>
						<p></p>
					</div>
					<div class="card-reveal">
						<span class="card-title grey-text text-darken-4"><b>Cerveja
								Heineken</b><i class="material-icons right">close</i></span>
						<p>A melhor cerveja de todos os tempos!</p>
					</div>
				</div>
			</div>
			<div class="col s12 m3">
				<div class="card">
					<div class="card-image waves-effect waves-block waves-light">
						<img class="activator" src="assets/media/img/img.carne.png">
					</div>
					<div class="card-content">
						<span class="card-title activator grey-text text-darken-4">Carne
							Contra Filé<i class="material-icons right">more_vert</i>
						</span>
						<p></p>
					</div>
					<div class="card-reveal">
						<span class="card-title grey-text text-darken-4"><b>Contra
								Filé</b><i class="material-icons right">close</i></span>
						<p>Todo dia é dia de churrasco, confira nossos preços !</p>
					</div>
				</div>
			</div>
			<div class="col s12 m3">
				<div class="card">
					<div class="card-image waves-effect waves-block waves-light">
						<img class="activator" src="assets/media/img/img.maguary.png">
					</div>
					<div class="card-content">
						<span class="card-title activator grey-text text-darken-4">Suco
							Maguary<i class="material-icons right">more_vert</i>
						</span>
						<p></p>
					</div>
					<div class="card-reveal">
						<span class="card-title grey-text text-darken-4"><b>Suco
								Maguary</b><i class="material-icons right">close</i></span>
						<p>Sucos Maguary, sempre pensando na qualidade de vida das
							pessoas.</p>
					</div>
				</div>
			</div>
			<div class="col s12 m3">
				<div class="card">
					<div class="card-image waves-effect waves-block waves-light">
						<img class="activator" src="assets/media/img/img.fruta.png">
					</div>
					<div class="card-content">
						<span class="card-title activator grey-text text-darken-4">Hortifruti<i
							class="material-icons right">more_vert</i>
						</span>
						<p></p>
					</div>
					<div class="card-reveal">
						<span class="card-title grey-text text-darken-4"><b>Hortifruti</b><i
							class="material-icons right">close</i></span>
						<p>Frutas frescas e colhidas com carinho.</p>
					</div>
				</div>
			</div>
		</div>

		<div class="row"></div>
		<div class="divider"></div>
		<div class="row"></div>
		<div class="row"></div>

		<!-- Cabecalho conteudo -->
		<div class="row center blue-text">
			<h3>Produtos Recomendados</h3>
		</div>
		<div class="row">
			<div class="col s12 m3">
				<div class="card">
					<div class="card-image waves-effect waves-block waves-light">
						<img class="activator" src="assets/media/img/img.peixe.png">
					</div>
					<div class="card-content">
						<span class="card-title activator grey-text text-darken-4">Peixes
							Frescos<i class="material-icons right">more_vert</i>
						</span>
						<p></p>
					</div>
					<div class="card-reveal">
						<span class="card-title grey-text text-darken-4"><b>Peixes
								Frescos</b><i class="material-icons right">close</i></span>
						<p>Dia de peixe fresco ? Todos os dias !</p>
					</div>
				</div>
			</div>
			<div class="col s12 m3">
				<div class="card">
					<div class="card-image waves-effect waves-block waves-light">
						<img class="activator" src="assets/media/img/img.chocolate.png">
					</div>
					<div class="card-content">
						<span class="card-title activator grey-text text-darken-4">Bombom
							Nestlé<i class="material-icons right">more_vert</i>
						</span>
						<p></p>
					</div>
					<div class="card-reveal">
						<span class="card-title grey-text text-darken-4"><b>Bombom
								Nestlé</b><i class="material-icons right">close</i></span>
						<p>Uma Variedade de chocolate.</p>
					</div>
				</div>
			</div>
			<div class="col s12 m3">
				<div class="card">
					<div class="card-image waves-effect waves-block waves-light">
						<img class="activator" src="assets/media/img/img.arroz.png">
					</div>
					<div class="card-content">
						<span class="card-title activator grey-text text-darken-4">Arroz
							Albaruska<i class="material-icons right">more_vert</i>
						</span>
						<p></p>
					</div>
					<div class="card-reveal">
						<span class="card-title grey-text text-darken-4"><b>Arroz
								Albaruska</b><i class="material-icons right">close</i></span>
						<p>O verdadeiro arroz de pilão.</p>
					</div>
				</div>
			</div>
			<div class="col s12 m3">
				<div class="card">
					<div class="card-image waves-effect waves-block waves-light">
						<img class="activator" src="assets/media/img/img.omo.png">
					</div>
					<div class="card-content">
						<span class="card-title activator grey-text text-darken-4">Sabão
							em Pó OMO<i class="material-icons right">more_vert</i>
						</span>
						<p></p>
					</div>
					<div class="card-reveal">
						<span class="card-title grey-text text-darken-4"><b>Sabão
								em Pó OMO</b><i class="material-icons right">close</i></span>
						<p>O sabão em pó para suas roupas mais branquinhas.</p>
					</div>
				</div>
			</div>
		</div>

		<div class="row"></div>
		<div class="divider"></div>
		<div class="row"></div>
		<div class="row"></div>

		<div class="row center green-text">

			<h3>Diferencial</h3>
		</div>

		<div class="row">
			<div class="col s12 m3">
				<div class="center promo promo-example">
					<i class="material-icons green-text large">loyalty</i>
					<p class="promo-caption">
					<h5>
						<b>SELEÇÃO ESPECIAL</b>
					</h5>
					</p>
					<p class="light center">Nossos Funcionários sabem selecionar os
						melhores produtos e deixá-los prontinhos para o transporte.</p>
				</div>
			</div>
			<div class="col s12 m3">
				<div class="center promo promo-example">
					<i class="material-icons green-text large">thumb_up</i>
					<p class="promo-caption">
					<h5>
						<b>TUDO DO SEU JEITO</b>
					</h5>
					</p>
					<p class="light center">Entrega tradicional, Agendada, Express.
						Clique e Retire.Quer mais? Na 1ºcompra, o frete é grátis.</p>
				</div>
			</div>
			<div class="col s12 m3">
				<div class="center promo promo-example">
					<i class="material-icons green-text large">done_all</i>
					<p class="promo-caption">
					<h5>
						<b>SEMPRE FRESQUINHO</b>
					</h5>
					</p>
					<p class="light center">Nossos caminhões têm tecnologia para
						transportar cada produto na temperatura ideal.</p>
				</div>
			</div>
			<div class="col s12 m3">
				<div class="center promo promo-example">
					<i class="material-icons green-text large">schedule</i>
					<p class="promo-caption">
					<h5>
						<b>TROCA RÁPIDA E FÁCIL</b>
					</h5>
					</p>
					<p class="light center">Se os produtos não chegarem com o
						padrão JSmartMarket, nós trocamos o item sem complicação.</p>
				</div>
			</div>
		</div>
	</div>

	<!-- Rodape -->
	<footer class="page-footer  indigo">
		<div class="footer-copyright">
			<div class="container center">2016 Copyright JSmart Market</div>
		</div>
	</footer>

	<script type="text/javascript">
		var teste = '${erroLogin}';
		if (teste != '') {
			alert('Senha inválida! Tente Novamente.')
		}
	</script>

	<!--Import JavaScript-->
	<script type="text/javascript"
		src="assets/lib/jquery/jquery-2.1.4.min.js"></script>
	<script type="text/javascript"
		src="assets/lib/materialize/js/materialize.min.js"></script>
</body>
</html>