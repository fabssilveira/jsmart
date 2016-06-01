package br.com.jsmartmarket.jpa.controller;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.jsmartmarket.jpa.dao.ClienteDao;
import br.com.jsmartmarket.jpa.dao.CompraDao;
import br.com.jsmartmarket.jpa.model.Cliente;
import br.com.jsmartmarket.jpa.model.Compra;

@Controller
public class JsmartController {

	@RequestMapping("/gravaCliente")
	public String gravaCliente(Cliente cliente){
		String senha = gerarSenha(cliente.getSenha());
		cliente.setSenha(senha);
		Cliente cadastro = new Cliente();
		
		cadastro = new ClienteDao().findUserCpf(cliente.getCpf());
		if(cadastro != null){
			return "formulario2";
		}
		cadastro = new ClienteDao().findUserLogin(cliente.getUserLogin());
		if(cadastro != null){
			return "formulario2";
		}	
		new ClienteDao().salvar(cliente);
		return "redirect:index.html";
	}

	@RequestMapping("/login")
	public String paginaInicial(Cliente cliente, HttpSession session){
		String senha = gerarSenha(cliente.getSenha());
		Cliente autorizado = new ClienteDao().findUserLogin(cliente.getUserLogin());
		if(autorizado == null){
			return "formulario";
		}
		if(autorizado.getSenha().equals(senha)){
			session.setAttribute("usuarioLogado", autorizado);
			session.setAttribute("login", autorizado.getUserLogin());
			return "paginaInicial";
		}
		return "redirect:index.html";
	}
	
	@RequestMapping("/formulario")
	public String formulario(){
		return "formulario";
	}
	
	@RequestMapping("/historia")
	public String historia(HttpSession session){
		if(session.getAttribute("usuarioLogado") != null){
			return "historia";
		}
		return "redirect:index.html";
	}
	
	@RequestMapping("/conta")
	public String conta(HttpSession session){
		if(session.getAttribute("usuarioLogado") != null){
			return "conta";
		}
		return "redirect:index.html";
	}
	
	@RequestMapping("/paginaInicial")
	public String paginaInicial(HttpSession session){
		if(session.getAttribute("usuarioLogado") != null){
			return "paginaInicial";
		}
		return "redirect:index.html";
	}
	
	@RequestMapping("/logoff")
	public String logoff(HttpSession session){
		if(session.getAttribute("usuarioLogado") != null){
			session.invalidate();
		}
		return "redirect:index.html";
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
	
	@RequestMapping("/teste")
	public String teste(){
		List<Compra> lista = new CompraDao().findCompra(7);
		CalcularCompra calculo = new CalcularCompra();
		for(Compra compra: lista){
			System.out.println(compra.getCodigoCompra());
			System.out.println(compra.getDataCompra());
			System.out.println(calculo.calcular(compra.getCodigoCompra()));
		}
		return "redirect:index.html";
	}
	
}
