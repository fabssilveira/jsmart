package br.com.jsmartmarket.jpa.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import br.com.jsmartmarket.jpa.model.Cliente;

@Repository
public class ClienteDao {
	
	@PersistenceContext
	private EntityManager em;
	
	public void atualizar(Cliente cliente) {
		em.merge(cliente);
	}
	
	public void salvar(Cliente cliente){
		em.persist(cliente);
	}
	
	public Cliente consultar(int codigo){
		return em.find(Cliente.class, codigo);
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
