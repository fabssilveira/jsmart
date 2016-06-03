package br.com.jsmartmarket.jpa.dao;

import java.util.List;

import javax.persistence.Query;

import br.com.jsmartmarket.jpa.model.Compra;

public class CompraDao extends DaoGenerico<Long, Compra>{

	@SuppressWarnings("unchecked")
	public List<Compra> buscaCompras(int codigoCliente){
		
		Query qr = em.createQuery("select c from Compra as c "+
          "where c.codigoCliente = :codigoCliente");
		qr.setParameter("codigoCliente", codigoCliente);
		
		return qr.getResultList();
	}

}
