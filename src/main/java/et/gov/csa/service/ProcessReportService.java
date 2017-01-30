package et.gov.csa.service;

import et.gov.csa.dao.RHouseholdByEADao;
import et.gov.csa.domain.RHouseholdByEA;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Istat Cooperation Unit
 */
@Service
public class ProcessReportService {

    @Autowired
    private RHouseholdByEADao rHouseholdByEADao;

    public List<RHouseholdByEA> getHouseholdByEAReport() {
        return rHouseholdByEADao.getAll();
    }

}
