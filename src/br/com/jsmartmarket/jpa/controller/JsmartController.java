package br.com.jsmartmarket.jpa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JsmartController {

	@RequestMapping("/gravaCliente")
	public String formulario(){
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
