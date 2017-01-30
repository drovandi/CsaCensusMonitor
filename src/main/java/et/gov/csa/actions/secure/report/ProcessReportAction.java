package et.gov.csa.actions.secure.report;

import com.opensymphony.xwork2.ActionContext;
import et.gov.csa.actions.BaseAction;
import et.gov.csa.domain.RHouseholdByEA;
import et.gov.csa.service.ProcessReportService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;
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

    @Autowired
    private ProcessReportService processReportService;

    @Action("householdByEA")
    public String householdByEA() {
        return "householdByEA";
    }

    @Action("householdByEAData")
    public String householdByEAData() {
        List<List> householdByEAReport = new LinkedList<>();
        List<String> eaNames = new LinkedList<>();
        List<RHouseholdByEA> l = processReportService.getHouseholdByEAReport();
        for (RHouseholdByEA e : l) {
            if (e.getHousehold()==null) {
                eaNames.addAll(Arrays.asList(e.getName().split("#")));
                eaNames.add("Total");
            } else {
                List ll = new LinkedList();
                ll.addAll(Arrays.asList(e.getName().split("#")));
                ll.add(e.getHousehold());
                householdByEAReport.add(ll);
            }
        }
        HttpServletResponse response = (HttpServletResponse) ActionContext.getContext().get(ServletActionContext.HTTP_RESPONSE);
        try (PrintWriter out = response.getWriter()) {
            response.setContentType("application/json;charset=UTF-8");
            String json1 = MAPPER.writeValueAsString(householdByEAReport);
            String json2 = MAPPER.writeValueAsString(eaNames);
            out.print("{\"data\":");
            out.print(json1);
            //WRITER.writeValue(out, householdByEAReport);
            out.print(",\"name\":");
            out.print(json2);
            //WRITER.writeValue(out, eaNames);
            out.print("}");
        } catch (IOException ex) {
            LOGGER.error(null, ex);
        }
        return null;
    }

}
