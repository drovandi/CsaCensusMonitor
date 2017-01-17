
package et.gov.csa.service;

import et.gov.csa.dao.LoadErrorDao;
import et.gov.csa.domain.LoadError;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Istat Cooperation Unit
 */
@Service
public class CsPro2SqlService {
    
    @Autowired private LoadErrorDao loadErrorDao;
    
    public List<LoadError> getLoadErrors() {
        return loadErrorDao.getAll();
    }
    
}
