package br.com.jsmartmarket.jpa.dao;

import javax.persistence.NoResultException;
import javax.persistence.Query;

import br.com.jsmartmarket.jpa.model.Produto;

public class ProdutoDao extends DaoGenerico<Long, Produto>{

	public Produto buscaProduto(int codigoProduto){
		
		Query qr = em.createQuery("select p from Produto as p "+
          "where p.codigoProduto = :codigoProduto");
		qr.setParameter("codigoProduto", codigoProduto);
		
		try{
			return (Produto) qr.getSingleResult();
		}catch(NoResultException e){
			return null;
		}
	}
	
}
