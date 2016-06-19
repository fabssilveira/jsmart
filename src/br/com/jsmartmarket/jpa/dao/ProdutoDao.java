package br.com.jsmartmarket.jpa.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import br.com.jsmartmarket.jpa.model.Produto;

public class ProdutoDao {

	EntityManager em;
	
	public ProdutoDao(EntityManager em){
		this.em = em;
	}
	
	public Produto buscaProduto(int codigoProduto){
		
		Query qr = em.createQuery("select p from Produto as p "+
          "where p.codigoProduto = :codigoProduto");
		qr.setParameter("codigoProduto", codigoProduto);
		
		try{
			Produto retorno = (Produto) qr.getSingleResult();
			return retorno;
		}catch(NoResultException e){
			return null;
		}
	}
	
}
