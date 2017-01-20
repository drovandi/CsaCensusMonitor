
package et.gov.csa.actions.secure.report;

import et.gov.csa.actions.BaseAction;
import et.gov.csa.domain.LoadError;
import et.gov.csa.domain.RIndividualInfo;
import et.gov.csa.domain.RQuestionnaireInfo;
import et.gov.csa.domain.RRegionalArea;
import et.gov.csa.domain.RReligion;
import et.gov.csa.domain.RSexByAge;
import et.gov.csa.domain.RSexByAgeGroup;
import et.gov.csa.service.CsPro2SqlService;
import et.gov.csa.service.DataReportService;
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
public class DataReportAction extends BaseAction {

    private static final long serialVersionUID = 1172293631047849261L;
    private static final Logger LOGGER = LoggerFactory.getLogger(DataReportAction.class);
    
    @Autowired private DataReportService dataReportService;
    
    private RQuestionnaireInfo questionnaireReport;
    private RRegionalArea regionalAreaReport;
    private List<RReligion> religionReport;
    private RIndividualInfo populationReport;
    private List<RSexByAge> sexAgeReport;
    private RSexByAgeGroup sexAgeGroupReport;
    
    @Action("")
    public String start() {
        return questionnaire();
    }
    
    @Action("questionnaire")
    public String questionnaire() {
        questionnaireReport = dataReportService.getQuestionnaireReport();
        regionalAreaReport = dataReportService.getRegionalAreaReport();
        return "questionnaire";
    }
    
    @Action("territory")
    public String territory() {
        return "territory";
    }

    @Action("population")
    public String population() {
        populationReport = dataReportService.getPopulationReport();
        return "population";
    }
    
    @Action("sexDistribution")
    public String sexDistribution() {
        populationReport = dataReportService.getPopulationReport();
        sexAgeReport = dataReportService.getSexByAgeReport();
        sexAgeGroupReport = dataReportService.getSexByAgeGroupReport();
        return "sexDistribution";
    }
    
    @Action("religion")
    public String religion() {
        populationReport = dataReportService.getPopulationReport();
        religionReport = dataReportService.getReligionReport();
        return "questionnaire";
    }
    
    public RQuestionnaireInfo getQuestionnaireReport() {
        return questionnaireReport;
    }

    public List<RSexByAge> getSexAgeReport() {
        return sexAgeReport;
    }

    public RSexByAgeGroup getSexAgeGroupReport() {
        return sexAgeGroupReport;
    }

    public RIndividualInfo getPopulationReport() {
        return populationReport;
    }

    public RRegionalArea getRegionalAreaReport() {
        return regionalAreaReport;
    }

    public List<RReligion> getReligionReport() {
        return religionReport;
    }

}
