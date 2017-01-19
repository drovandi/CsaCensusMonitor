
package et.gov.csa.domain;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Istat Cooperation Unit
 */
@Entity
@Table(name = "MR_QUESTIONNAIRE_INFO")
public class RQuestionnaireInfo implements Serializable {

    private static final long serialVersionUID = -9099571143554200993L;

    private int total;
    private double avg_individual;
    private double avg_individual_male;
    private double avg_individual_female;
    
    @Id
    @Column(name = "TOTAL", unique = true, nullable = false)
    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    @Column(name = "AVG_INDIVIDUAL")
    public double getAvg_individual() {
        return avg_individual;
    }

    public void setAvg_individual(double avg_individual) {
        this.avg_individual = avg_individual;
    }

    @Column(name = "AVG_INDIVIDUAL_MALE")
    public double getAvg_individual_male() {
        return avg_individual_male;
    }

    public void setAvg_individual_male(double avg_individual_male) {
        this.avg_individual_male = avg_individual_male;
    }

    @Column(name = "AVG_INDIVIDUAL_FEMALE")
    public double getAvg_individual_female() {
        return avg_individual_female;
    }

    public void setAvg_individual_female(double avg_individual_female) {
        this.avg_individual_female = avg_individual_female;
    }
    
}
