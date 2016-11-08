
package et.gov.csa.service;

import et.gov.csa.dao.CUserDao;
import et.gov.csa.domain.CUser;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Istat Cooperation Unit
 */
@Service
public class UserService {
    
    @Autowired private CUserDao cUserDao;
    
    public List<CUser> getAllUsers() {
        return cUserDao.getAll();
    }
    
}
