package br.com.jsmartmarket.jpa.dao;

import br.com.jsmartmarket.jpa.model.Cliente;

public class ClienteDao extends DaoGenerico<Long, Cliente>{

	@Override
	public void salvar(Cliente cliente){
		super.salvar(cliente);				
	}
	
}