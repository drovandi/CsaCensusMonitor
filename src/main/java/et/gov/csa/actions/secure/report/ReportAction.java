
package et.gov.csa.actions.secure.report;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.opensymphony.xwork2.ActionContext;
import et.gov.csa.actions.*;
import et.gov.csa.domain.RIndividualCount;
import et.gov.csa.domain.RQuestionnaire;
import et.gov.csa.domain.RSexByAge;
import et.gov.csa.service.ProcessReportService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Istat Cooperation Unit
 */
@ParentPackage(value = "default")
public class ReportAction extends BaseAction {

    private static final long serialVersionUID = 827880151339521780L;
    private static final Gson GSON = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().setDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").create();
    
    @Autowired private ProcessReportService processReportService;
    
    private RQuestionnaire questionnaireReport;
    private RSexByAge sexAgeReport;
    
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
            out.print(GSON.toJson(individualCountReport));
        } catch (IOException ex) {
            Logger.getLogger(ReportAction.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    @Action("territory")
    public String territory() {
        return "territory";
    }

    @Action("reportChart")
    public String reportChart() {
        sexAgeReport = processReportService.getSexByAgeReport();
        return "reportChart";
    }
    
    @Action("birthYear")
    public String birthYear() {
        return "birthYear";
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
    
}
