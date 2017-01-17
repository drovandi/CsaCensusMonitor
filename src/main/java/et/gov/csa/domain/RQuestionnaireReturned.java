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
@Table(name = "R_QUESTIONNAIRE_RETURNED")
public class RQuestionnaireReturned implements Serializable {

    private static final long serialVersionUID = 5859143976887320410L;

    private int returned;

    @Id
    @Column(name = "RETURNED", unique = true, nullable = false)
    public int getReturned() {
        return returned;
    }

    public void setReturned(int returned) {
        this.returned = returned;
    }

}
