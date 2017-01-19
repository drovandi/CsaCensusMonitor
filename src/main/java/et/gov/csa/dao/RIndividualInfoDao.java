
package et.gov.csa.dao;

import et.gov.csa.domain.RIndividualInfo;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Istat Cooperation Unit
 */
@Repository
public class RIndividualInfoDao extends AbstractDao<RIndividualInfo, Integer> {
    
    @Autowired
    public RIndividualInfoDao(SessionFactory sessionFactory) {
        super(RIndividualInfo.class,sessionFactory);
    }
    
}
