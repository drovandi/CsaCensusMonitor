
package et.gov.csa.actions.secure.report;

import et.gov.csa.actions.BaseAction;
import et.gov.csa.domain.RHouseholdByEA;
import et.gov.csa.service.ProcessReportService;
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
public class ProcessReportAction extends BaseAction {

    private static final long serialVersionUID = 1172293631047849261L;
    private static final Logger LOGGER = LoggerFactory.getLogger(ProcessReportAction.class);
    
    @Autowired private ProcessReportService processReportService;
    
    private List<RHouseholdByEA> householdByEAReport;
    
    @Action("householdByEA")
    public String householdByEA() {
        householdByEAReport = processReportService.getHouseholdByEAReport();
        return "householdByEA";
    }

    public List<RHouseholdByEA> getHouseholdByEAReport() {
        return householdByEAReport;
    }
    
}
