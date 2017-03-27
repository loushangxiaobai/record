package com.thinkcms.dao;

import java.io.Serializable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.transform.ResultTransformer;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


/**
 * hibernate通用DAO（Spring、Hibernate环境下使用，所有db操作均可通过此类完成）.
 * 
 * <ul>
 * <li>需在applicationContext.xml中将此类配置bean</li>
 * <li>并将SessionFactory对象注入sessionFactory属性</li>
 * </ul>
 */
@SuppressWarnings("unchecked")
@Component("baseDao")
public class BaseDao {
	/* ***************sessionFactory***************** */
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	/* ***************获取session***************** */
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();	//必须开启事务，否则获取不到
	}
	
	
	
	/* ***************代码增删改***************** */
	/** 存储实体到数据库. */
	public <PK extends Serializable> PK save(Object entity) {
		return (PK) getSession().save(entity);
	}
	
	/** 增加或更新实体. */
	public void saveOrUpdate(Object entity) {
		getSession().saveOrUpdate(entity);		
	}
	
	/** 删除指定的实体. */
	public void delete(Object entity) {
		getSession().delete(entity);
	}
	
	/** 更新实体. */
	public void update(Object entity) {
		getSession().update(entity);
	}
	
	/* ***************HQL增删改***************** */
	/** 使用HQL语句增加、更新、删除实体. */
	public int hqlUpdate(String hql) {
		Query query = getSession().createQuery(hql);
		return query.executeUpdate();
	}
	
	/** 使用HQL语句增加、更新、删除实体（带参数）. */
	public int hqlUpdate(String hql, Object value) {
		Query query = getSession().createQuery(hql);
		query.setParameter(0, value);
		return query.executeUpdate();
	}
	
	/** 使用HQL语句增加、更新、删除实体（带参数）. */
	public int hqlUpdate(String hql, Object... values) {
		Query query = getSession().createQuery(hql);
		for (int i = 0; i < values.length; i ++) {
			query.setParameter(i, values[i]);
		}
		return query.executeUpdate();
	}
	
	
	
	/* ***************SQL增删改***************** */
	/** 使用SQL语句增加、更新、删除实体. */
	public int sqlUpdate(String sql) {
		SQLQuery query = getSession().createSQLQuery(sql);
		return query.executeUpdate();
	}
	
	/** 使用SQL语句增加、更新、删除实体（带参数）. */
	public int sqlUpdate(String sql, Object value) {
		SQLQuery query = getSession().createSQLQuery(sql);
		query.setParameter(0, value);
		return query.executeUpdate();
	}
	
	/** 使用SQL语句增加、更新、删除实体（带参数）. */
	public int sqlUpdate(String sql, Object... values) {
		SQLQuery query = getSession().createSQLQuery(sql);
		for (int i = 0; i < values.length; i ++) {
			query.setParameter(i, values[i]);
		}
		return query.executeUpdate();
	}
	
	
	
	/* ***************代码查询***************** */
	//查询条件：无（满足最基本需要）
	/** 根据主键获取实体（延迟加载），如果没有则抛出异常. */
	public <T> T load(Class<T> clazz, Serializable id) {
		return (T) getSession().load(clazz, id);
	}
	
	
	//查询条件：无（满足最基本需要）
	/** 根据主键获取实体，如果没有则返回null. */
	public <T> T get(Class<T> clazz, Serializable id) {
		return (T) getSession().get(clazz, id);
	}
	
	/** 全部查询. */
	public <T> List<T> find(Class<T> clazz) {
		return findByCriteria(DetachedCriteria.forClass(clazz));
	}
	
	/** 分页，全部查询. */
	public <T> List<T> find(Class<T> clazz, int firstResult, int maxResults) {
		return findByCriteria(DetachedCriteria.forClass(clazz), firstResult, maxResults);
	}
	/** 排序查询. */
	public <T> List<T> orderFind(Class<T> clazz,String propertyName) {
		Criteria c = DetachedCriteria.forClass(clazz).getExecutableCriteria(getSession());
		c.addOrder(Order.asc(propertyName));
		return c.list();
	}
	
	/** 获取总记录数. */
	public <T> Long count(Class<T> clazz) {
		return countByCriteria(DetachedCriteria.forClass(clazz));
	}
	
	
	//查询条件：属性=值（满足最基本需要）
	/** 根据属性查询. */
	public <T> T getByProperty(Class<T> clazz, String propertyName, Object value) {
		DetachedCriteria dc = DetachedCriteria.forClass(clazz);
		Criterion cr = Restrictions.eq(propertyName, value);
		dc.add(cr);
		return getByCriteria(dc);
	}
	
	/** 根据属性查询. */
	public <T> List<T> findByProperty(Class<T> clazz, String propertyName, Object value) {
		DetachedCriteria dc = DetachedCriteria.forClass(clazz);
		Criterion cr = Restrictions.eq(propertyName, value);
		dc.add(cr);
		return findByCriteria(dc);
	}
	
	/** 分页，根据属性查询. */
	public <T> List<T> findByProperty(Class<T> clazz, String propertyName, Object value, int firstResult, int maxResults) {
		DetachedCriteria dc = DetachedCriteria.forClass(clazz);
		Criterion cr = Restrictions.eq(propertyName, value);
		dc.add(cr);
		return findByCriteria(dc, firstResult, maxResults);
	}
	
	/** 获取总记录数，根据属性. */
	public Long countByProperty(Class<?> clazz, String propertyName, Object value) {
		DetachedCriteria dc = DetachedCriteria.forClass(clazz);
		Criterion cr = Restrictions.eq(propertyName, value);
		dc.add(cr);
		return countByCriteria(dc);
	}
	
	//查询条件：多个属性=值，属性名值对包含于实体（满足最基本需要）
	/** 根据实体构造一个查询条件（不支持主键、关联、NULL）. */
	public <T> T getByExample(T exampleEntity) {
		DetachedCriteria dc = DetachedCriteria.forClass(exampleEntity.getClass());
		Criterion cr = Example.create(exampleEntity);
		dc.add(cr);
		return getByCriteria(dc);
	}
	
	/** 根据实体构造一个查询条件（不支持主键、关联、NULL）. */
	public <T> List<T> findByExample(T exampleEntity) {
		DetachedCriteria dc = DetachedCriteria.forClass(exampleEntity.getClass());
		Criterion cr = Example.create(exampleEntity);
		dc.add(cr);
		return findByCriteria(dc);
	}
	
	/** 分页，根据实体构造一个查询条件（不支持主键、关联、NULL）. */
	public <T> List<T> findByExample(T exampleEntity, int firstResult, int maxResults) {
		DetachedCriteria dc = DetachedCriteria.forClass(exampleEntity.getClass());
		Criterion cr = Example.create(exampleEntity);
		dc.add(cr);
		return findByCriteria(dc, firstResult, maxResults);
	}
	
	/** 获取总记录数，根据实体构造一个查询条件（不支持主键、关联、NULL）. */
	public Long countByExample(Object exampleEntity) {
		DetachedCriteria dc = DetachedCriteria.forClass(exampleEntity.getClass());
		Criterion cr = Example.create(exampleEntity);
		dc.add(cr);
		return countByCriteria(dc);
	}
	
	
	//查询条件：where、order by、group by、统计、去重复（满足大多数需要）
	/** 
	 * 万能唯一查询.
	 * <p>根据Criterion、Order、Projection构造查询条件，根据ResultTransformer封装查询结果</p>
	 * <ul>
	 * <li>Criterion：支持<b>where</b>，创建如Restrictions.eq(?,?)、Example.create(?)</li>
	 * <li>Order：支持<b>order by</b>，创建如Order.desc(?)</li>
	 * <li>Projection：支持<b>group by</b>、<b>统计</b>、<b>去重复</b>，创建如Projections.count(?)</li>
	 * <li>ResultTransformer：支持<b>定义结果封装类型</b>，创建如Transformers.TO_LIST</li>
	 * </ul>
	 */
	public <T> T getByAny(Class<?> clazz, Object... any) {	//clazz与T.class的类型不一定是一一相对的，因此用<?>
		DetachedCriteria criteria = getDetachedCriteria(clazz, any);
		return getByCriteria(criteria);
	}
	
	/** 
	 * 万能列表查询.
	 * <p>根据Criterion、Order、Projection构造查询条件，根据ResultTransformer封装查询结果</p>
	 * <ul>
	 * <li>Criterion：支持<b>where</b>，创建如Restrictions.eq(?,?)、Example.create(?)</li>
	 * <li>Order：支持<b>order by</b>，创建如Order.desc(?)</li>
	 * <li>Projection：支持<b>group by</b>、<b>统计</b>、<b>去重复</b>，创建如Projections.count(?)</li>
	 * <li>ResultTransformer：支持<b>定义结果封装类型</b>，创建如Transformers.TO_LIST</li>
	 * </ul>
	 */
	public <T> List<T> findByAny(Class<?> clazz, Object... any) {
		DetachedCriteria criteria = getDetachedCriteria(clazz, any);
		return findByCriteria(criteria);
	}
	
	/** 
	 * 万能列表分页查询.
	 * <p>根据Criterion、Order、Projection构造查询条件，根据ResultTransformer封装查询结果</p>
	 * <ul>
	 * <li>Criterion：支持<b>where</b>，创建如Restrictions.eq(?,?)、Example.create(?)</li>
	 * <li>Order：支持<b>order by</b>，创建如Order.desc(?)</li>
	 * <li>Projection：支持<b>group by</b>、<b>统计</b>、<b>去重复</b>，创建如Projections.count(?)</li>
	 * <li>ResultTransformer：支持<b>定义结果封装类型</b>，创建如Transformers.TO_LIST</li>
	 * </ul>
	 */
	public <T> List<T> findByAny(Class<?> clazz, int firstResult, int maxResults, Object... any) {
		DetachedCriteria criteria = getDetachedCriteria(clazz, any);
		return findByCriteria(criteria, firstResult, maxResults);
	}
	
	/** 
	 * 万能统计.
	 * <p>根据Criterion构造查询条件；支持<b>where</b>，不支持group by；创建如Restrictions.eq(?,?)、Example.create(?)</p>
	 */
	public Long countByAny(Class<?> clazz, Criterion... criterions) {
		DetachedCriteria criteria	= DetachedCriteria.forClass(clazz);
		for (Criterion criterion : criterions) {
			criteria.add(criterion);
		}
		return countByCriteria(criteria);
	}
	
	
	//查询条件：Criteria标准查询（最底层实现，基本满足所有需要，一般情况下用不到）
	/** Criteria唯一查询.<ul><li>不限于某个实体，可查询任何对象</li></ul> */
	public <T> T getByCriteria(DetachedCriteria dc) {
		Criteria c = dc.getExecutableCriteria(getSession());
		c.setFirstResult(0);
		c.setMaxResults(1);			//保证只查询一个，查多个无用
		List<T> list = c.list();	//不用uniqueResult()，避免结果为0个或多个报异常
		return list.size() > 0 ? list.get(0) : null;
	}
	
	/** Criteria查询.<ul><li>不限于某个实体，可查询任何对象</li></ul> */
	public <T> List<T> findByCriteria(DetachedCriteria dc) {
		Criteria c = dc.getExecutableCriteria(getSession());
		return c.list();
	}
	
	/** Criteria分页查询.<ul><li>不限于某个实体，可查询任何对象</li></ul> */
	public <T> List<T> findByCriteria(DetachedCriteria dc, int firstResult, int maxResults) {
		dc.setProjection(null);//清除count引起的dc.setProjection(Projections.rowCount());
		Criteria c = dc.getExecutableCriteria(getSession());
		c.setFirstResult(firstResult);
		c.setMaxResults(maxResults);
		return c.list();
	}
	
	/** Criteria统计.<ul><li>不支持group by（因为setProjection只能调一次）</li><li>不限于某个实体，可查询任何对象</li></ul> */
	public Long countByCriteria(DetachedCriteria dc) {
		dc.setProjection(Projections.rowCount());
		Criteria c = dc.getExecutableCriteria(getSession());
		return (Long)c.uniqueResult();
	}
	

	
	/* ***************HQL查询***************** */
	/** 使用HQL语句检索数据. */
	public <T> List<T> hqlQuery(String hql) {
		Query query = getSession().createQuery(hql);
		return query.list();
	}
	
	/** 使用HQL语句检索数据（带参数）. */
	public <T> List<T> hqlQuery(String hql, Object value) {
		Query query = getSession().createQuery(hql);
		query.setParameter(0, value);
		return query.list();
	}
	
	/** 使用HQL语句检索数据（带参数）. */
	public <T> List<T> hqlQuery(String hql, Object... values) {
		Query query = getSession().createQuery(hql);
		for (int i = 0; i < values.length; i ++) {
			query.setParameter(i, values[i]);
		}
		return query.list();
	}
	
	/** 使用HQL语句检索数据，返回Iterator. */
	public <T> Iterator<T> iterate(String hql) {
		Query query = getSession().createQuery(hql);
		return query.iterate();
	}
	
	/** 使用HQL语句检索数据，返回Iterator（带参数）. */
	public <T> Iterator<T> iterate(String hql, Object value) {
		Query query = getSession().createQuery(hql);
		query.setParameter(0, value);
		return query.iterate();
	}
	
	/** 使用HQL语句检索数据，返回Iterator（带参数）. */
	public <T> Iterator<T> iterate(String hql, Object... values) {
		Query query = getSession().createQuery(hql);
		for (int i = 0; i < values.length; i ++) {
			query.setParameter(i, values[i]);
		}
		return query.iterate();
	}
	
	
	
	/* ***************SQL查询***************** */
	//结果转为Map
	/** 使用SQL语句检索数据，并将结果以字段名或别名为key封装为Map. */
	public List<Map<String, Object>> sqlQuery(String sql) {
		return sqlQuery(Transformers.ALIAS_TO_ENTITY_MAP, sql);
	}
	
	/** 使用SQL语句检索数据，并将结果以字段名或别名为key封装为Map（带参数）. */
	public List<Map<String, Object>> sqlQuery(String sql, Object value) {
		return sqlQuery(Transformers.ALIAS_TO_ENTITY_MAP, sql, value);
	}
	
	/** 使用SQL语句检索数据，并将结果以字段名或别名为key封装为Map（带参数）. */
	public List<Map<String, Object>> sqlQuery(String sql, Object... values) {
		return sqlQuery(Transformers.ALIAS_TO_ENTITY_MAP, sql, values);
	}
	
	
	//结果转为指定bean，bean的属性名与数据库字段名不同时，应在sql中使用别名
	/** 使用SQL语句检索数据，并将结果根据字段名或别名转换为clazz类型的对象. */
	public <T> List<T> sqlQuery(Class<T> clazz, String sql) {
		return sqlQuery(Transformers.aliasToBean(clazz), sql);
	}
	
	/** 使用SQL语句检索数据，并将结果根据字段名或别名转换为clazz类型的对象（带参数）. */
	public <T> List<T> sqlQuery(Class<T> clazz, String sql, Object value) {
		return sqlQuery(Transformers.aliasToBean(clazz), sql, value);
	}
	
	/** 使用SQL语句检索数据，并将结果根据字段名或别名转换为clazz类型的对象（带参数）. */
	public <T> List<T> sqlQuery(Class<T> clazz, String sql, Object... values) {
		return sqlQuery(Transformers.aliasToBean(clazz), sql, values);
	}
	
	
	//结果转为指定类型
	/** 使用SQL语句检索数据，并将结果根据字段名或别名封装为resultTransformer指定类型对象. */
	public <T> List<T> sqlQuery(ResultTransformer resultTransformer, String sql) {
		SQLQuery query = getSession().createSQLQuery(sql);
		query.setResultTransformer(resultTransformer);
		return query.list();
	}
	
	/** 使用SQL语句检索数据，并将结果根据字段名或别名封装为resultTransformer指定类型对象（带参数）. */
	public <T> List<T> sqlQuery(ResultTransformer resultTransformer, String sql, Object value) {
		SQLQuery query = getSession().createSQLQuery(sql);
		query.setResultTransformer(resultTransformer);
		query.setParameter(0, value);
		return query.list();
	}
	
	/** 使用SQL语句检索数据，并将结果根据字段名或别名封装为resultTransformer指定类型对象（带参数）. */
	public <T> List<T> sqlQuery(ResultTransformer resultTransformer, String sql, Object... values) {
		SQLQuery query = getSession().createSQLQuery(sql);
		query.setResultTransformer(resultTransformer);
		for (int i = 0; i < values.length; i ++) {
			query.setParameter(i, values[i]);
		}
		return query.list();
	}
	
	
	//结果转为指定实体，使用OR映射，查询所有字段
	/** 使用SQL语句检索数据，并将结果根据OR映射转换为实体，sql必须查询实体中包含的所有字段，否则报错. */
	public <T> List<T> sqlQueryEntity(Class<T> clazz, String sql) {
		SQLQuery query = getSession().createSQLQuery(sql);
		query.addEntity(clazz);
		return query.list();
	}
	
	/** 使用SQL语句检索数据，并将结果根据OR映射转换为实体，sql必须查询实体中包含的所有字段，否则报错（带参数）. */
	public <T> List<T> sqlQueryEntity(Class<T> clazz, String sql, Object value) {
		SQLQuery query = getSession().createSQLQuery(sql);
		query.setResultTransformer(Transformers.aliasToBean(clazz));
		query.setParameter(0, value);
		return query.list();
	}
	
	/** 使用SQL语句检索数据，并将结果根据OR映射转换为实体，sql必须查询实体中包含的所有字段，否则报错（带参数）. */
	public <T> List<T> sqlQueryEntity(Class<T> clazz, String sql, Object... values) {
		SQLQuery query = getSession().createSQLQuery(sql);
		query.setResultTransformer(Transformers.aliasToBean(clazz));
		for (int i = 0; i < values.length; i ++) {
			query.setParameter(i, values[i]);
		}
		return query.list();
	}
	
	
	
	/* ***************其它***************** */
	/** 关闭返回的Iterator. */
	public void closeIterator(Iterator<?> it) {
		Hibernate.close(it);
	}
	
	/** 清理缓存，执行SQL（只用当使用触发器，或把Hibernate和JDBC混合使用，直接调用session.flush()才是有意义的）. */
	public void flush () {
		getSession().flush();
	}
	
	/** 把指定的实体对象从缓冲区进行清除，使之成为游离对象. */
	public void clear () {
		getSession().clear();
	}
	
	/** 把缓冲区内的全部对象清除(但不包括操作中的对象)，使所有实体成为游离对象，延迟加载器的session也将清空，因此会导致延迟加载时报异常. */
	public void evict (Object entity) {
		getSession().evict(entity);
	}
	

	
	/* ***************内部调用***************** */
	private DetachedCriteria getDetachedCriteria(Class<?> clazz, Object... any) {
		DetachedCriteria criteria	= DetachedCriteria.forClass(clazz);
		ProjectionList projList		= null;
		ResultTransformer rt		= null;
		for (Object obj : any) {
			if (obj instanceof Criterion) {
				criteria.add((Criterion)obj);
			} else if (obj instanceof Order) {
				criteria.addOrder((Order)obj);
			} else if (obj instanceof Projection) {
				if (projList == null) projList = Projections.projectionList();
				projList.add((Projection)obj);
			} else if (obj instanceof ResultTransformer) {
				rt = (ResultTransformer) obj;
			} else {
				//查询条件类型未知，不处理
			}
		}
		if (projList != null) criteria.setProjection(projList);
		if (rt != null) criteria.setResultTransformer(rt);	//必须放在criteria.setProjection后，否则无效
		return criteria;
	}


}