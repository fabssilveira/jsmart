function validaCampos() {
	if (document.querySelector('#email').value == '') {
		var lblEmail = document.querySelector("#lblEmail");
		lblEmail.textContent = "E-Mail: Campo Obrigatório!";
		lblEmail.style.color = "red";
		return false;
	}
	if (document.querySelector('#login').value == '') {
		var lblLogin = document.querySelector("#lblLogin");
		lblLogin.textContent = "Login: Campo Obrigatório!";
		lblLogin.style.color = "red";
		return false;
	}
}

document.querySelector('#form-esqueciSenha').onsubmit = validaCampos;