package br.com.jsmartmarket.jpa.dao;

import java.util.List;

import org.hibernate.criterion.Restrictions;

import br.com.jsmartmarket.jpa.model.ItensCompra;

public class ItensCompraDao extends DaoGenerico<Long, ItensCompra>{

	@SuppressWarnings("unchecked")
	public List<ItensCompra> findItensCompra(int codigoCompra) {
        try {
            return (List<ItensCompra>) getSession().createCriteria(ItensCompra.class)
                .add(Restrictions.eq("codigoCompra", codigoCompra));
        } finally {
            close();
        }
    }
	
}
