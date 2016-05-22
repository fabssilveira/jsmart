package br.com.jsmartmarket.jpa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.jsmartmarket.jpa.dao.AutorizaDao;
import br.com.jsmartmarket.jpa.dao.ClienteDao;
import br.com.jsmartmarket.jpa.dao.EnderecoDao;
import br.com.jsmartmarket.jpa.model.Autoriza;
import br.com.jsmartmarket.jpa.model.Cliente;
import br.com.jsmartmarket.jpa.model.Endereco;

@Controller
public class JsmartController {

	@RequestMapping("/gravaCliente")
	public String formulario(Endereco endereco, Cliente cliente, Autoriza autoriza){
		
		new EnderecoDao().salvar(endereco);
		new ClienteDao().salvar(cliente);
		new AutorizaDao().salvar(autoriza);
		
		return "formulario";
	}

	@RequestMapping("/login")
	public String paginaInicial(){
		return "paginaInicial";
	}
	
	@RequestMapping("/historia")
	public String historia(){
		return "historia";
	}
	
	@RequestMapping("/suaConta")
	public String conta(){
		return "conta";
	}
	
}
