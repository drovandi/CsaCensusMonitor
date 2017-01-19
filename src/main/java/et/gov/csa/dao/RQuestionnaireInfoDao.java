
package et.gov.csa.dao;

import et.gov.csa.domain.RQuestionnaireInfo;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Istat Cooperation Unit
 */
@Repository
public class RQuestionnaireInfoDao extends AbstractDao<RQuestionnaireInfo, Integer> {
    
    @Autowired
    public RQuestionnaireInfoDao(SessionFactory sessionFactory) {
        super(RQuestionnaireInfo.class,sessionFactory);
    }
    
}
