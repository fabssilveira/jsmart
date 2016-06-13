package br.com.jsmartmarket.jpa.controller;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.jsmartmarket.jpa.dao.ClienteDao;
import br.com.jsmartmarket.jpa.model.Cliente;
import br.com.jsmartmarket.jpa.util.JPAUtil;

@Controller
public class JsmartController {

	@RequestMapping("/gravaCliente")
	public String gravaCliente(Cliente cliente){
		
		if(cliente.getNome().equals("") && cliente.getCpf().equals("")
				&& cliente.getUserLogin().equals("") && cliente.getSenha().equals("")
				&& cliente.getEmail().equals("") && cliente.getTelefone().equals("")){
			return "formulario3";
		}
		
		String senha = gerarSenha(cliente.getSenha());
		cliente.setSenha(senha);
		Cliente cadastro = new Cliente();
		
		cadastro = new ClienteDao().buscaCpf(cliente.getCpf());
		if(cadastro != null){
			return "formulario2";
		}
		cadastro = new ClienteDao().buscaLogin(cliente.getUserLogin());
		if(cadastro != null){
			return "formulario2";
		}
		
		new ClienteDao().salvar(cliente);
		return "redirect:index.html";
	}
	
	@RequestMapping("/alteraCliente")
	public String alteraCliente(Cliente cliente, HttpSession session){
		String senha = gerarSenha(cliente.getSenha());
		Cliente autorizado = new ClienteDao().buscaLogin(cliente.getUserLogin());
		if(autorizado == null){
			return "alteracaoDados";
		}
		if(senha.equals(autorizado.getSenha()) && autorizado.getUserLogin().equals(session.getAttribute("login"))){ 
			cliente.setCodigoCliente(autorizado.getCodigoCliente());
			cliente.setNome(autorizado.getNome());
			cliente.setSobrenome(autorizado.getSobrenome());
			cliente.setRg(autorizado.getRg());
			cliente.setExpedidor(autorizado.getExpedidor());
			cliente.setCpf(autorizado.getCpf());
			cliente.setDataNascimento(autorizado.getDataNascimento());
			cliente.setSenha(autorizado.getSenha());
			new ClienteDao().atualizar(cliente);
			return "meusDados";
		}
		return "alteracaoDados";
	}

	@RequestMapping("/login")
	public String paginaInicial(Cliente cliente, HttpSession session){
		
		String senha = gerarSenha(cliente.getSenha());
		Cliente autorizado = new ClienteDao().buscaLogin(cliente.getUserLogin());
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
	
	@RequestMapping("/logout")
	public String logout(HttpSession session){
		if(session.getAttribute("usuarioLogado") != null){
			session.invalidate();
		}
		
		return "redirect:index.html";
	}
	
	@RequestMapping("/compra")
	public String detalhaCompra(int codigo, HttpSession session){
		if(session.getAttribute("usuarioLogado") != null){
			session.setAttribute("codigoCompra", ""+codigo);
			return "compra";
		}
		return "redirect:index.html";
	}
	
	@RequestMapping("/meusDados")
	public String meusDados(HttpSession session){
		if(session.getAttribute("usuarioLogado") != null){
			return "meusDados";
		}
		return "redirect:index.html";
	}
	
	@RequestMapping("/alteracaoDados")
	public String alterarDados(Cliente cliente, HttpSession session){
		if(session.getAttribute("usuarioLogado") != null){
			return "alteracaoDados";
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
	
				
}
