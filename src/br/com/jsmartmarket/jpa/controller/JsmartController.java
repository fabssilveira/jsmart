package br.com.jsmartmarket.jpa.controller;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.jsmartmarket.jpa.dao.ClienteDao;
import br.com.jsmartmarket.jpa.model.Cliente;
import br.com.jsmartmarket.jpa.model.Uf;

@Controller
public class JsmartController {

	@RequestMapping("/gravaCliente")
	public String formulario(Cliente cliente){
		String senha = gerarSenha(cliente.getSenha());
		cliente.setSenha(senha);
		new ClienteDao().salvar(cliente);
		return "formulario";
	}

	@RequestMapping("/login")
	public String paginaInicial(Cliente cliente, HttpSession session){
		String senha = gerarSenha(cliente.getSenha());
		Cliente autorizado = new ClienteDao().findUserLogin(cliente.getUserLogin());
		if(autorizado.getSenha().equals(senha)){
			session.setAttribute("usuarioLogado", autorizado);
			return "paginaInicial";
		}
		return "formulario";
	}
	
	@RequestMapping("/historia")
	public String historia(){
		return "historia";
	}
	
	@RequestMapping("/suaConta")
	public String conta(){
		return "conta";
	}
	
	public String gerarSenha(String senha){
		String valorParaSenha = senha;
		MessageDigest algorithm;
		try {
			algorithm = MessageDigest.getInstance("SHA-256");
			byte messageDigest[] = algorithm.digest(valorParaSenha.getBytes("UTF-8"));
			StringBuilder hexString = new StringBuilder();
			for (byte b : messageDigest) {
			  hexString.append(String.format("%02X", 0xFF & b));
			}
			senha = hexString.toString();
		} catch (NoSuchAlgorithmException | UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return senha;
	}
	
}
