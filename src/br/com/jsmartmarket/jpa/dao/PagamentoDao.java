package br.com.jsmartmarket.jpa.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;

import br.com.jsmartmarket.jpa.model.Pagamento;

@Repository
public class PagamentoDao {
	
	@PersistenceContext
	private EntityManager em;
	
	public Pagamento consulta(int codigoPagamento){
		return em.find(Pagamento.class, codigoPagamento);
	}

}
