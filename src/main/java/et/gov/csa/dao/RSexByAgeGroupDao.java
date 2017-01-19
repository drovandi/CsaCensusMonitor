
package et.gov.csa.dao;

import et.gov.csa.domain.RSexByAgeGroup;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Istat Cooperation Unit
 */
@Repository
public class RSexByAgeGroupDao extends AbstractDao<RSexByAgeGroup, Integer> {
    
    @Autowired
    public RSexByAgeGroupDao(SessionFactory sessionFactory) {
        super(RSexByAgeGroup.class,sessionFactory);
    }
    
}
