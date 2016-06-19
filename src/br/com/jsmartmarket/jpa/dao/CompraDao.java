package br.com.jsmartmarket.jpa.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import br.com.jsmartmarket.jpa.model.Compra;

public class CompraDao{

	EntityManager em;
	
	public CompraDao(EntityManager em){
		this.em = em;
	}
	
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
