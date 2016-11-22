function validaCampos() {
	if (document.querySelector('#login').value == '') {
		var lblLogin = document.querySelector("#lblLogin");
		lblLogin.textContent = "Login: Campo Obrigatório!";
		lblLogin.style.color = "red";
		document.getElementById('login').focus();
		return false;
	}
	if (document.querySelector('#senha').value == '') {
		var lblSenha = document.querySelector("#lblSenha");
		lblSenha.textContent = "Senha Atual: Campo Obrigatório!";
		lblSenha.style.color = "red";
		document.getElementById('senha').focus();
		return false;
	}
	if (document.querySelector('#novaSenha').value == '') {
		var lblNovaSenha = document.querySelector("#lblNovaSenha");
		lblNovaSenha.textContent = "Nova Senha: Campo Obrigatório!";
		lblNovaSenha.style.color = "red";
		document.getElementById('novaSenha').focus();
		return false;
	}
	if (document.querySelector('#novaSenha').value != document
			.querySelector('#confirmaNovaSenha').value) {
		var lblConfirmaNovaSenha = document.querySelector("#lblConfirmaNovaSenha");
		lblConfirmaNovaSenha.textContent = "A Nova Senha não Confere!";
		lblConfirmaNovaSenha.style.color = "red";
		document.getElementById('novaSenha').focus();
		return false;
	}
}

document.querySelector('#form-redefinirSenha').onsubmit = validaCampos;