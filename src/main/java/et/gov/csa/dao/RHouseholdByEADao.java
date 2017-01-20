
package et.gov.csa.dao;

import et.gov.csa.domain.RHouseholdByEA;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Istat Cooperation Unit
 */
@Repository
public class RHouseholdByEADao extends AbstractDao<RHouseholdByEA, Integer> {
    
    @Autowired
    public RHouseholdByEADao(SessionFactory sessionFactory) {
        super(RHouseholdByEA.class,sessionFactory);
    }
    
}
