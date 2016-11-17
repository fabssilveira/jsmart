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
	if (document.querySelector('#senha').value == '') {
		var lblSenha = document.querySelector("#lblSenha");
		lblSenha.textContent = "Senha: Campo Obrigatório!";
		lblSenha.style.color = "red";
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