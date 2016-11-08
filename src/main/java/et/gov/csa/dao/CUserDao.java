
package et.gov.csa.dao;

import et.gov.csa.domain.CUser;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Istat Cooperation Unit
 */
@Repository
public class CUserDao extends AbstractDao<CUser, Long> {
    
    @Autowired
    public CUserDao(SessionFactory sessionFactory) {
        super(CUser.class,sessionFactory);
    }
    
}
