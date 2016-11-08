
package et.gov.csa.dao;

import et.gov.csa.domain.RSexByAge;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Istat Cooperation Unit
 */
@Repository
public class RSexByAgeDao extends AbstractDao<RSexByAge, Integer> {
    
    @Autowired
    public RSexByAgeDao(SessionFactory sessionFactory) {
        super(RSexByAge.class,sessionFactory);
    }
    
}
