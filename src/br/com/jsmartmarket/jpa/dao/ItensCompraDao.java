package br.com.jsmartmarket.jpa.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import br.com.jsmartmarket.jpa.model.ItensCompra;

@Repository
public class ItensCompraDao {

	@PersistenceContext
	private EntityManager em;
	
	@SuppressWarnings("unchecked")
	public List<ItensCompra> buscaItens(int codigoCompra){
		
		Query qr = em.createQuery("select i from ItensCompra as i "+
          "where i.codigoCompra = :codigoCompra");
		qr.setParameter("codigoCompra", codigoCompra);
		
		List<ItensCompra> retorno = qr.getResultList();
		return retorno;
	}
	
}
