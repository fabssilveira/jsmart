//Inicializa componentes do materializzecss
$(document).ready(function() {
	$('input#input_text, textarea#textarea1').characterCounter();
});

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

//funções do site

function validaSenha() {
	if (document.querySelector('#senha').value != document.querySelector('#confirmasenha').value) {
		alert('As senhas digitadas não estão iguais!');
		return false;
	}
}

function validaCPF() {
	if (document.querySelector('#cpf').value == '') {
		alert('O Campo CPF não pode estar vazio!');
		return false;
	}
}

function validaNome() {
	if (document.querySelector('#nome').value == '') {
		alert('O Campo Nome não pode estar vazio!');
		return false;
	}
}

function validaEmail() {
	if (document.querySelector('#email').value == '') {
		alert('O Campo E-Mail não pode estar vazio!');
		return false;
	}
}

function validaTel() {
	if (document.querySelector('#residencial').value == '') {
		alert('O Campo Telefone Residencial não pode estar vazio!');
		return false;
	}
}

function validaLogin() {
	if (document.querySelector('#login').value == '') {
		alert('O Campo Login não pode estar vazio!');
		return false;
	}
}

document.querySelector('#form-cadastro').onsubmit = validaSenha;
document.querySelector('#form-cadastro').onsubmit = validaCPF;
document.querySelector('#form-cadastro').onsubmit = validaNome;
document.querySelector('#form-cadastro').onsubmit = validaEmail;
document.querySelector('#form-cadastro').onsubmit = validaTel;
document.querySelector('#form-cadastro').onsubmit = validaLogin;