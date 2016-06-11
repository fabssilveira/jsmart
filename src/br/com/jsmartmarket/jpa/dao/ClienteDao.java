package br.com.jsmartmarket.jpa.dao;

import javax.persistence.NoResultException;
import javax.persistence.Query;

import br.com.jsmartmarket.jpa.model.Cliente;

public class ClienteDao extends DaoGenerico<Long, Cliente>{

	@Override
	public Cliente buscaPorId(Cliente cliente, long codigoCliente) {
		return super.buscaPorId(cliente, codigoCliente);
	}

	@Override
	public void atualizar(Cliente cliente) {
		super.atualizar(cliente);
	}

	@Override
	public void salvar(Cliente cliente){
		super.salvar(cliente);				
	}
	
	public Cliente buscaLogin(String userLogin){
		
		Query qr = em.createQuery("select c from Cliente as c "+
          "where c.userLogin = :userLogin");
		qr.setParameter("userLogin", userLogin);
		
		try{
			Cliente retorno = (Cliente) qr.getSingleResult();
			em.clear();
			return retorno;
		}catch(NoResultException e){
			return null;
		}
	}
	
	public Cliente buscaCpf(String cpf){
		
		Query qr = em.createQuery("select c from Cliente as c "+
		 "where c.cpf = :cpf");
		qr.setParameter("cpf", cpf);
				
		try{
			Cliente retorno = (Cliente) qr.getSingleResult();
			em.clear();
			return retorno;
		}catch(NoResultException e){
			return null;
		}
	}
								
}
