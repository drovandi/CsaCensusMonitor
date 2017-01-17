
package et.gov.csa.dao;

import et.gov.csa.domain.LoadError;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Istat Cooperation Unit
 */
@Repository
public class LoadErrorDao extends AbstractDao<LoadError, Integer> {
    
    @Autowired
    public LoadErrorDao(SessionFactory sessionFactory) {
        super(LoadError.class,sessionFactory);
    }
    
}
