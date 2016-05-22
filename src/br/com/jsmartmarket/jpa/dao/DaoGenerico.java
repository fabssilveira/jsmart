package br.com.jsmartmarket.jpa.dao;

import java.lang.reflect.ParameterizedType;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import br.com.jsmartmarket.jpa.util.JPAUtil;

public class DaoGenerico<PK, T> {
	EntityManager em = JPAUtil.getEntityManager();
	protected void init(){
		JPAUtil.init();
	}
	protected void commit(){
		JPAUtil.commit();
	}
	protected void rolback(){
		JPAUtil.rollback();
	}
	public void salvar(T modelo){
		this.init();
		em.persist(modelo);
		this.commit();
	}
	public void excluir(T modelo, long id){
		this.init();
		T encontrado =(T) em.find(modelo.getClass(), id);
		em.remove(encontrado);
		this.commit();
	}
	public void atualizar(T modelo){
		this.init();
		em.merge(modelo);
		this.commit();
	}
	public List<T> buscaTodos(){
		String jpql = "from " + getTypeClass().getName();
		Query qry = em.createQuery(jpql);
		return qry.getResultList();
	}
	
	public T buscaPorId(T modelo, long id){
		return (T) em.find(modelo.getClass(), id);
	}
	
	private Class<?> getTypeClass(){
		Class<?> clazz = (Class<?>) ((ParameterizedType) this.getClass().getGenericSuperclass()).getActualTypeArguments()[1];
		return clazz;
	}
}
