package br.com.jsmartmarket.jpa.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import br.com.jsmartmarket.jpa.model.Cliente;

public class ClienteDao {
	
	EntityManager em;
	
	public ClienteDao(EntityManager em){
		this.em = em;
	}

	public void atualizar(Cliente cliente) {
		em.getTransaction().begin();
		em.merge(cliente);
		em.getTransaction().commit();
	}
	
	public void salvar(Cliente cliente){
		em.getTransaction().begin();
		em.persist(cliente);
		em.getTransaction().commit();			
	}
	
	public Cliente buscaLogin(String userLogin){
		
		Query qr = em.createQuery("select c from Cliente as c "+
          "where c.userLogin = :userLogin");
		qr.setParameter("userLogin", userLogin);
		
		try{
			Cliente retorno = (Cliente) qr.getSingleResult();
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
			return retorno;
		}catch(NoResultException e){
			return null;
		}
	}
								
}
