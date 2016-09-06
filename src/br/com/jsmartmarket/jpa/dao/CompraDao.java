package br.com.jsmartmarket.jpa.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import br.com.jsmartmarket.jpa.model.Compra;

@Repository
public class CompraDao{

	@PersistenceContext
	private EntityManager em;
	
	@SuppressWarnings("unchecked")
	public List<Compra> buscaCompras(int codigoCliente){
		
		Query qr = em.createQuery("select c from Compra as c "+
          "where c.codigoCliente = :codigoCliente");
		qr.setParameter("codigoCliente", codigoCliente);
		
		List<Compra> retorno =  qr.getResultList();
		return retorno;
	}
	
	public Compra buscaSuaCompra(int codigoCompra){
		
		Query qr = em.createQuery("select c from Compra as c "+
		          "where c.codigoCompra = :codigoCompra");
		qr.setParameter("codigoCompra", codigoCompra);
		
		try{
			Compra retorno = (Compra) qr.getSingleResult();
			return retorno;
		}catch(NoResultException e){
			return null;
		}
	}

}
