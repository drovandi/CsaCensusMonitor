
package et.gov.csa.dao;

import et.gov.csa.domain.RReligion;
import java.util.List;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Istat Cooperation Unit
 */
@Repository
public class RReligionDao extends AbstractDao<RReligion, Integer> {
    
    @Autowired
    public RReligionDao(SessionFactory sessionFactory) {
        super(RReligion.class,sessionFactory);
    }
    
    @Override
    public List<RReligion> getAll() {
        return super.getAll(Order.desc("individuals"));
    }
    
}
