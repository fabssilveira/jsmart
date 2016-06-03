package br.com.jsmartmarket.jpa.dao;

import javax.persistence.NoResultException;
import javax.persistence.Query;

import br.com.jsmartmarket.jpa.model.Cliente;

public class ClienteDao extends DaoGenerico<Long, Cliente>{

	@Override
	public void salvar(Cliente cliente){
		super.salvar(cliente);				
	}
	
	public Cliente buscaLogin(String userLogin){
		
		Query qr = em.createQuery("select c from Cliente as c "+
          "where c.userLogin = :userLogin");
		qr.setParameter("userLogin", userLogin);
		
		try{
			return (Cliente) qr.getSingleResult();
		}catch(NoResultException e){
			return null;
		}
	}
	
	public Cliente buscaCpf(String cpf){
		
		Query qr = em.createQuery("select c from Cliente as c "+
		 "where c.cpf = :cpf");
		qr.setParameter("cpf", cpf);
				
		try{
			return (Cliente) qr.getSingleResult();
		}catch(NoResultException e){
			return null;
		}
	}
								
}
