package br.com.jsmartmarket.jpa.util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JPAUtil {
	
	private static EntityManagerFactory emFactory = Persistence
			.createEntityManagerFactory("sqlserver");

	public EntityManager getEntityManager() {
		EntityManager em = emFactory.createEntityManager();
		return em;
	}	
		
}

