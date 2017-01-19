
package et.gov.csa.dao;

import et.gov.csa.domain.RIndividualCount;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Istat Cooperation Unit
 */
@Repository
public class RIndividualCountDao extends AbstractDao<RIndividualCount, Integer> {
    
    @Autowired
    public RIndividualCountDao(SessionFactory sessionFactory) {
        super(RIndividualCount.class,sessionFactory);
    }
    
}
