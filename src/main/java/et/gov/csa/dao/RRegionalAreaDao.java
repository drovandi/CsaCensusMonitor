
package et.gov.csa.dao;

import et.gov.csa.domain.RRegionalArea;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Istat Cooperation Unit
 */
@Repository
public class RRegionalAreaDao extends AbstractDao<RRegionalArea, Integer> {
    
    @Autowired
    public RRegionalAreaDao(SessionFactory sessionFactory) {
        super(RRegionalArea.class,sessionFactory);
    }
    
}
