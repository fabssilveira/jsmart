package br.com.jsmartmarket.jpa.util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class JPAUtil {
	
	private static EntityManager em;

	public static EntityManager getEntityManager() {
		if (em == null) {
			EntityManagerFactory emFactory = Persistence
					.createEntityManagerFactory("mysql");
			em = emFactory.createEntityManager();
		}
		return em;
	}	
	
	public static void init() {
		EntityTransaction tx = getEntityManager().getTransaction();
		if (tx == null || !tx.isActive()) {
			System.out.println("Iniciando transacao...");
			tx.begin();
		}
	}
	
	public static void commit() {
		EntityTransaction transaction = getEntityManager().getTransaction();
		if (transaction != null && transaction.isActive()
				&& !transaction.getRollbackOnly()) {
			transaction.commit();
		} else {
			rollback();
		}
	}
	
	public static void rollback() {
		EntityTransaction transaction = getEntityManager().getTransaction();
		if (transaction.isActive() || transaction.getRollbackOnly()) {
			transaction.rollback();
		}
	}	
}

