function validaCampos() {
	if (document.querySelector('#email').value == '') {
		var lblEmail = document.querySelector("#lblEmail");
		lblEmail.textContent = "E-Mail: Campo Obrigatório!";
		lblEmail.style.color = "red";
		document.getElementById('email').focus();
		return false;
	}
	if (document.querySelector('#login').value == '') {
		var lblLogin = document.querySelector("#lblLogin");
		lblLogin.textContent = "Login: Campo Obrigatório!";
		lblLogin.style.color = "red";
		document.getElementById('login').focus();
		return false;
	}
}

document.querySelector('#form-esqueciSenha').onsubmit = validaCampos;