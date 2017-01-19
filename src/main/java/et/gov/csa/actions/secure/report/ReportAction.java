
package et.gov.csa.actions.secure.report;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectReader;
import com.fasterxml.jackson.databind.ObjectWriter;
import com.opensymphony.xwork2.ActionContext;
import et.gov.csa.actions.*;
import et.gov.csa.domain.LoadError;
import et.gov.csa.domain.RIndividualCount;
import et.gov.csa.domain.RQuestionnaire;
import et.gov.csa.domain.RSexByAge;
import et.gov.csa.service.CsPro2SqlService;
import et.gov.csa.service.ProcessReportService;
import java.io.IOException;
import java.io.PrintWriter;
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
public class ReportAction extends BaseAction {

    private static final long serialVersionUID = 827880151339521780L;
    private static final Logger LOGGER = LoggerFactory.getLogger(ReportAction.class);
    private static final ObjectMapper MAPPER = new ObjectMapper();
    private static final ObjectWriter WRITER = MAPPER.writer();
    private static final ObjectReader READER = MAPPER.reader();
    
    @Autowired private ProcessReportService processReportService;
    @Autowired private CsPro2SqlService csPro2SqlService;
    
    private RQuestionnaire questionnaireReport;
    private RSexByAge sexAgeReport;
    private List<LoadError> loadErrors;
    
    @Action("")
    public String start() {
        return questionnaire();
    }
    
    @Action("questionnaire")
    public String questionnaire() {
        questionnaireReport = processReportService.getQuestionnaireReport();
        return "questionnaire";
    }
    
    @Action("individualCount")
    public String individualCount() {
        RIndividualCount individualCountReport = processReportService.getIndividualCountReport();
        HttpServletResponse response = (HttpServletResponse)ActionContext.getContext().get(ServletActionContext.HTTP_RESPONSE);
        try (PrintWriter out = response.getWriter()) {
            response.setContentType("application/json;charset=UTF-8");
            out.print(WRITER.writeValueAsString(individualCountReport));
        } catch (IOException ex) {
            LOGGER.error("Impossible to create Json", ex);
        }
        return null;
    }
    
    @Action("territory")
    public String territory() {
        return "territory";
    }

    @Action("sexDistribution")
    public String sexDistribution() {
        sexAgeReport = processReportService.getSexByAgeReport();
        return "sexDistribution";
    }
    
    @Action("birthYear")
    public String birthYear() {
        return "birthYear";
    }

    @Action("cspro2sqlError")
    public String cspro2sqlError() {
        loadErrors = csPro2SqlService.getLoadErrors();
        return "cspro2sqlError";
    }

    @Action("todo")
    public String todo() {
        return "todo";
    }
    
    public double percentage(int a, int b) {
        if (a+b==0) return 0;
        return Math.round(1000.*a/(a+b))/10.;
    }
    
    public RQuestionnaire getQuestionnaireReport() {
        return questionnaireReport;
    }

    public RSexByAge getSexAgeReport() {
        return sexAgeReport;
    }

    public List<LoadError> getLoadErrors() {
        return loadErrors;
    }
    
}
