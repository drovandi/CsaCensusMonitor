
package et.gov.csa.service;

import et.gov.csa.dao.RIndividualCountDao;
import et.gov.csa.dao.RQuestionnaireDao;
import et.gov.csa.dao.RSexByAgeDao;
import et.gov.csa.domain.RIndividualCount;
import et.gov.csa.domain.RQuestionnaire;
import et.gov.csa.domain.RSexByAge;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Istat Cooperation Unit
 */
@Service
public class ProcessReportService {
    
    @Autowired private RQuestionnaireDao rQuestionnaireDao;
    @Autowired private RIndividualCountDao rIndividualCountDao;
    
    public RQuestionnaire getQuestionnaireReport() {
        return rQuestionnaireDao.getAll().get(0);
    }
    
    public RIndividualCount getIndividualCountReport() {
        return rIndividualCountDao.getAll().get(0);
    }

}
