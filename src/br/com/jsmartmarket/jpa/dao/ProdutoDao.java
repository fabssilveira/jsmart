package br.com.jsmartmarket.jpa.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;

import br.com.jsmartmarket.jpa.model.Produto;

@Repository
public class ProdutoDao {

	@PersistenceContext
	private EntityManager em;
	
	public Produto consulta(int codigoProduto){
		return em.find(Produto.class, codigoProduto);
	}
	
}
