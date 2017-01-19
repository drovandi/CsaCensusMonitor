
package et.gov.csa.dao;

import et.gov.csa.domain.RQuestionnaire;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Istat Cooperation Unit
 */
@Repository
public class RQuestionnaireDao extends AbstractDao<RQuestionnaire, Integer> {
    
    @Autowired
    public RQuestionnaireDao(SessionFactory sessionFactory) {
        super(RQuestionnaire.class,sessionFactory);
    }
    
}
