package br.com.jsmartmarket.jpa.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import br.com.jsmartmarket.jpa.model.Produto;

@Repository
public class ProdutoDao {

	@PersistenceContext
	private EntityManager em;
	
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
