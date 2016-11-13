$(document).ready(function() {
	$('input#input_text, textarea#textarea1').characterCounter();
});

$(".button-collapse").sideNav();
 
 

      $('.parallax').parallax();
   

$('.datepicker')
		.pickadate(
				{
					selectMonths : true,// Creates a dropdown to control month
					selectYears : 15,// Creates a dropdown of 15 years to
					// control year
					// The title label to use for the month nav buttons
					labelMonthNext : 'Próximo Mês',
					labelMonthPrev : 'Mês Anterior',
					// The title label to use for the dropdown selectors
					labelMonthSelect : 'Selecione o Mês',
					labelYearSelect : 'Selecione o ano',
					// Months and weekdays
					monthsFull : [ 'Janeiro', 'Fevereiro', 'Março', 'Abril',
							'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro',
							'Outubro', 'Novembro', 'Dezembro' ],
					monthsShort : [ 'Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun',
							'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez' ],
					weekdaysFull : [ 'Domingo', 'Segunda', 'Terça', 'Quarta',
							'Quinta', 'Sexta', 'Sábado' ],
					weekdaysShort : [ 'Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex',
							'Sab' ],
					// Materialize modified
					weekdaysLetter : [ 'D', 'S', 'T', 'Q', 'Q', 'S', 'S' ],
					// Today and clear
					today : 'Hoje',
					clear : 'Limpar',
					close : 'Fechar',
					// The format to show on the `input` element
					format : 'd mmmm, yyyy'
				});

$(document).ready(function() {
	$('select').material_select();
});

$(document).ready(function() {
	$('.slider').slider({
		full_width : true
	});
});

$(document).ready(function() {
	$('.carousel').carousel();
});

function validaCampos() {
	if (document.querySelector('#nome').value == '') {
		var lblNome = document.querySelector("#lblNome");
		lblNome.textContent = "Nome: Campo Obrigatório!";
		lblNome.style.color = "red";
		return false;
	}
	if (document.querySelector('#cpf').value == '') {
		var lblCpf = document.querySelector("#lblCpf");
		lblCpf.textContent = "CPF: Campo Obrigatório!";
		lblCpf.style.color = "red";
		return false;
	}
	if (document.querySelector('#residencial').value == '') {
		var lblTel = document.querySelector("#lblTel");
		lblTel.textContent = "Telefone Residencial: Campo Obrigatório!";
		lblTel.style.color = "red";
		return false;
	}
	if (document.querySelector('#email').value == '') {
		var lblEmail = document.querySelector("#lblEmail");
		lblEmail.textContent = "E-Mail:: Campo Obrigatório!";
		lblEmail.style.color = "red";
		return false;
	}
	if (document.querySelector('#login').value == '') {
		var lblLogin = document.querySelector("#lblLogin");
		lblLogin.textContent = "Login: Campo Obrigatório!";
		lblLogin.style.color = "red";
		return false;
	}
	if (document.querySelector('#senha').value != document
			.querySelector('#confirmasenha').value) {
		var lblSenha = document.querySelector("#lblSenha");
		lblSenha.textContent = "A Senha não Confere!";
		lblSenha.style.color = "red";
		return false;
	}
	
}

document.querySelector('#form-cadastro').onsubmit = validaCampos;




