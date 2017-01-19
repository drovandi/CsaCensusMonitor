
package et.gov.csa.dao;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;

/**
 *
 * @author Istat Cooperation Unit
 */
public abstract class AbstractDao<T, ID extends Serializable> {
    
    private static final transient ProjectionList PROJ_ROW_COUNT;
    
    private final Class<T> persistentClass;
    protected final HibernateTemplate hibernateTemplate;
    
    static {
        PROJ_ROW_COUNT = Projections.projectionList();
        PROJ_ROW_COUNT.add(Projections.rowCount());
    }
    
    protected AbstractDao(Class<T> persistentClass, SessionFactory sessionFactory) {
        this.persistentClass = persistentClass;
        this.hibernateTemplate = new HibernateTemplate(sessionFactory);
    }
    
    public T get(ID id) {
        return (T) hibernateTemplate.get(persistentClass, id);
    }
    
    public List<T> getAll() {
        return hibernateTemplate.loadAll(persistentClass);
    }
    
    public List<T> getAll(final Order order) {
        return (List<T>) this.hibernateTemplate.execute(new HibernateCallback() {
            @Override
            public Object doInHibernate(Session session) {
                Criteria crit = session.createCriteria(persistentClass);
                crit.addOrder(order);
                return crit.list();
            }
        });
    }
    
    public T save(T entity) {
        hibernateTemplate.saveOrUpdate(entity);
        return entity;
    }
    
    public Collection<T> saveAll(Collection<T> entities) {
        for (T t : entities) {
            hibernateTemplate.saveOrUpdate(t);
        }
        return entities;
    }
    
    public T merge(T entity) {
        return hibernateTemplate.merge(entity);
    }
    
    public Collection<T> mergeAll(Collection<T> entities) {
        ArrayList<T> al = new ArrayList<>(entities.size());
        for (T t : entities) {
            al.add(hibernateTemplate.merge(t));
        }
        return al;
    }
    
    public T delete(T entity) {
        hibernateTemplate.delete(entity);
        return entity;
    }
    
    public Collection<T> deleteAll(Collection<T> entities) {
        hibernateTemplate.deleteAll(entities);
        return entities;
    }
    
    public void flush() {
        hibernateTemplate.flush();
    }
    
    public T reattach(T entity) {
        hibernateTemplate.refresh(entity);
//        // REFERENCE:
//        // http://www.intertech.com/Blog/Post/Hibernate-lock()-to-Reattach-Detached-Objects.aspx
//        if (!hibernateTemplate.contains(object)) {
//            hibernateTemplate.lock(object,LockMode.NONE);
//        }
        return entity;
    }
    
    public T evict(T entity) {
        hibernateTemplate.evict(entity);
        return entity;
    }
    
    public void clear() {
        hibernateTemplate.clear();
    }
    
    public T refresh(T entity) {
        hibernateTemplate.refresh(entity);
        return entity;
    }
    
    public List<T> find(final Criterion[] criterions, final Order[] orders, final Projection[] projections,
            final Map<String, String> alias, final Integer page, final Integer pagesize) {
        return (List<T>) this.hibernateTemplate.execute(new HibernateCallback() {
            @Override
            public Object doInHibernate(Session session) {
                Criteria crit = session.createCriteria(persistentClass);
                if (criterions != null && criterions.length > 0) {
                    for (Criterion c : criterions) {
                        crit.add(c);
                    }
                }
                if (orders != null && orders.length > 0) {
                    for (Order o : orders) {
                        crit.addOrder(o);
                    }
                }
                if (projections != null && projections.length > 0) {
                    ProjectionList projList = Projections.projectionList();
                    for (Projection p : projections) {
                        projList.add(p);
                    }
                    crit.setProjection(projList);
                }
                if (alias != null && !alias.isEmpty()) {
                    for (Map.Entry<String, String> e : alias.entrySet()) {
                        crit.createAlias(e.getKey(), e.getValue());
                    }
                }
                if (pagesize != null) {
                    crit.setMaxResults(pagesize);
                    if (page != null) {
                        crit.setFirstResult(page * pagesize);
                    }
                }
                return crit.list();
            }
        });
    }
    
    public List<T> find(final Criterion criterion, final Order[] orders) {
        return (List<T>) this.hibernateTemplate.execute(new HibernateCallback() {
            @Override
            public Object doInHibernate(Session session) {
                Criteria crit = session.createCriteria(persistentClass);
                crit.add(criterion);
                if (orders != null && orders.length > 0) {
                    for (Order o : orders) {
                        crit.addOrder(o);
                    }
                }
                return crit.list();
            }
        });
    }
    
    public Long count(final Criterion[] criterions, final Map<String, String> alias) {
        return (Long) this.hibernateTemplate.execute(new HibernateCallback() {
            @Override
            public Object doInHibernate(Session session) {
                Criteria crit = session.createCriteria(persistentClass);
                if (criterions != null && criterions.length > 0) {
                    for (Criterion c : criterions) {
                        crit.add(c);
                    }
                }
                if (alias != null && !alias.isEmpty()) {
                    for (Map.Entry<String, String> e : alias.entrySet()) {
                        crit.createAlias(e.getKey(), e.getValue());
                    }
                }
                crit.setProjection(PROJ_ROW_COUNT);
                crit.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
                return (Long) crit.uniqueResult();
            }
        });
    }
    
    public List<T> findByCriteria(final Criterion criterion) {
        return find(new Criterion[]{criterion}, null, null, null, null, null);
    }
    
    public List<T> findByCriteria(final Criterion... criterions) {
        return find(criterions, null, null, null, null, null);
    }
    
    public List<T> findByCriteria(final List<Criterion> criterions, final Map<String, String> alias, final List<Order> orders) {
        return find(criterions.toArray(new Criterion[0]), orders.toArray(new Order[0]), null, alias, null, null);
    }
    
    public List<T> findByCriteriaWithProjection(final List<Criterion> criterions, final List<Projection> projections, final List<Order> orders) {
        return find(criterions.toArray(new Criterion[0]), orders.toArray(new Order[0]), projections.toArray(new Projection[0]), null, null, null);
    }
    
    public Long countByCriteria(final List<Criterion> criterions, final Map<String, String> alias) {
        return count(criterions.toArray(new Criterion[0]), alias);
    }
    
}
