package br.com.jsmartmarket.jpa.dao;

import java.util.List;

import javax.persistence.Query;

import br.com.jsmartmarket.jpa.model.Uf;

public class UfDao extends DaoGenerico<Long, Uf>{
	
	@SuppressWarnings("unchecked")
	public List<Uf> buscaUf(){
		
		Query qr = em.createQuery("select u from Uf as u");
				
		return qr.getResultList();
	}

}
