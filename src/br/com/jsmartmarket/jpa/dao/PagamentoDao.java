package br.com.jsmartmarket.jpa.dao;

import org.hibernate.criterion.Restrictions;

import br.com.jsmartmarket.jpa.model.Pagamento;

public class PagamentoDao extends DaoGenerico<Long, Pagamento>{
	
	public Pagamento findCodigoPagto(int codigo) {
        try {
            return (Pagamento) getSession().createCriteria(Pagamento.class)
                .add(Restrictions.eq("codigoPagamento", codigo)).uniqueResult();
        } finally {
            close();
        }
    }

}
