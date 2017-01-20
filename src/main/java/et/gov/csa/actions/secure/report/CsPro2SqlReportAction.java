
package et.gov.csa.actions.secure.report;

import et.gov.csa.actions.BaseAction;
import et.gov.csa.domain.LoadError;
import et.gov.csa.service.CsPro2SqlService;
import java.util.List;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Istat Cooperation Unit
 */
@ParentPackage(value = "default")
public class CsPro2SqlReportAction extends BaseAction {

    private static final long serialVersionUID = -3915543877883060539L;
    private static final Logger LOGGER = LoggerFactory.getLogger(CsPro2SqlReportAction.class);
    
    @Autowired private CsPro2SqlService csPro2SqlService;
    
    private List<LoadError> loadErrors;
    
    @Action("cspro2sqlError")
    public String cspro2sqlError() {
        loadErrors = csPro2SqlService.getLoadErrors();
        return "cspro2sqlError";
    }
    
    public List<LoadError> getLoadErrors() {
        return loadErrors;
    }
    
}
