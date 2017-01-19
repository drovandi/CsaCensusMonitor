
package et.gov.csa.service;

import et.gov.csa.dao.RIndividualInfoDao;
import et.gov.csa.dao.RQuestionnaireInfoDao;
import et.gov.csa.dao.RRegionalAreaDao;
import et.gov.csa.dao.RReligionDao;
import et.gov.csa.dao.RSexByAgeDao;
import et.gov.csa.domain.RIndividualInfo;
import et.gov.csa.domain.RQuestionnaireInfo;
import et.gov.csa.domain.RRegionalArea;
import et.gov.csa.domain.RReligion;
import et.gov.csa.domain.RSexByAge;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Istat Cooperation Unit
 */
@Service
public class DataReportService {
    
    @Autowired private RIndividualInfoDao rIndividualInfoDao;
    @Autowired private RSexByAgeDao rSexByAgeDao;
    @Autowired private RQuestionnaireInfoDao rQuestionnaireInfoDao;
    @Autowired private RRegionalAreaDao rRegionalAreaDao;
    @Autowired private RReligionDao rReligionDao;
    
    public RIndividualInfo getPopulationReport() {
        return rIndividualInfoDao.getAll().get(0);
    }
    
    public RSexByAge getSexByAgeReport() {
        return rSexByAgeDao.getAll().get(0);
    }
    
    public RQuestionnaireInfo getQuestionnaireReport() {
        return rQuestionnaireInfoDao.getAll().get(0);
    }
    
    public RRegionalArea getRegionalAreaReport() {
        return rRegionalAreaDao.getAll().get(0);
    }
    
    public List<RReligion> getReligionReport() {
        return rReligionDao.getAll();
    }
    
}
