package br.com.jsmartmarket.jpa.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import br.com.jsmartmarket.jpa.model.Compra;

public class CompraDao extends DaoGenerico<Long, Compra>{

	public List findCompra(int codigoCliente) {
        try {
         	Criteria crit = getSession().createCriteria(Compra.class);
         	crit.add(Restrictions.eq("codigoCliente", codigoCliente));
         	List results = crit.list();
         	return results;
        } finally {
            close();
        }
		
    }
	
}
