package br.com.jsmartmarket.jpa.dao;

import org.hibernate.criterion.Restrictions;

import br.com.jsmartmarket.jpa.model.Produto;

public class ProdutoDao extends DaoGenerico<Long, Produto>{

	public Produto findProduto(int codigoProduto) {
        try {
            return (Produto) getSession().createCriteria(Produto.class)
                .add(Restrictions.eq("codigoProduto", codigoProduto)).uniqueResult();
        } finally {
            close();
        }
    }
	
}
