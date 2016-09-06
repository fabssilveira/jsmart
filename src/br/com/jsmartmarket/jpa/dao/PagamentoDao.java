package br.com.jsmartmarket.jpa.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import br.com.jsmartmarket.jpa.model.Pagamento;

@Repository
public class PagamentoDao {
	
	@PersistenceContext
	private EntityManager em;
	
	@SuppressWarnings("unchecked")
	public Pagamento buscaPagamento(int codigoPagamento){
		
		Query qr = em.createQuery("select p from Pagamento as p "+
          "where p.codigoPagamento = :codigoPagamento");
		qr.setParameter("codigoPagamento", codigoPagamento);
		
		try{
			Pagamento retorno = (Pagamento) qr.getSingleResult();
			return retorno;
		}catch(NoResultException e){
			return null;
		}
	}

}
