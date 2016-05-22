package br.com.jsmartmarket.jpa.dao;

import org.hibernate.criterion.Restrictions;

import br.com.jsmartmarket.jpa.model.Cliente;

public class ClienteDao extends DaoGenerico<Long, Cliente>{

	@Override
	public void salvar(Cliente cliente){
		super.salvar(cliente);				
	}
	
	public Cliente findUserLogin(String login) {
        try {
            return (Cliente) getSession().createCriteria(Cliente.class)
                .add(Restrictions.eq("userLogin", login)).uniqueResult();
        } finally {
            close();
        }
    }
			
}
