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
@Table(name = "R_QUESTIONNAIRE_TOTAL")
public class RQuestionnaireTotal implements Serializable {

    private static final long serialVersionUID = 5859143976887320410L;

    private int totale;

    @Id
    @Column(name = "TOTAL", unique = true, nullable = false)
    public int getTotale() {
        return totale;
    }

    public void setTotale(int totale) {
        this.totale = totale;
    }

}
