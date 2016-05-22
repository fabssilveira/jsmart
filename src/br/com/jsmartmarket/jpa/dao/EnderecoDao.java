package br.com.jsmartmarket.jpa.dao;

import br.com.jsmartmarket.jpa.model.Endereco;

public class EnderecoDao extends DaoGenerico<Long, Endereco>{

	@Override
	public void salvar(Endereco endereco){
		super.salvar(endereco);				
	}
	
}
