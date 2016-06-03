package br.com.jsmartmarket.jpa.dao;

import java.util.List;

import javax.persistence.NoResultException;
import javax.persistence.Query;

import br.com.jsmartmarket.jpa.model.Pagamento;

public class PagamentoDao extends DaoGenerico<Long, Pagamento>{
	
	@SuppressWarnings("unchecked")
	public Pagamento buscaPagamento(int codigoPagamento){
		
		Query qr = em.createQuery("select p from Pagamento as p "+
          "where p.codigoPagamento = :codigoPagamento");
		qr.setParameter("codigoPagamento", codigoPagamento);
		
		try{
			return (Pagamento) qr.getSingleResult();
		}catch(NoResultException e){
			return null;
		}
	}

}
