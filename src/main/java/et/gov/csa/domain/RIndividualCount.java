
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
@Table(name = "MR_INDIVIDUAL_COUNT")
public class RIndividualCount implements Serializable {

    private static final long serialVersionUID = 5859143976887320410L;

    private int individual;
        
    @Id
    @Column(name = "INDIVIDUAL", unique = true, nullable = false)
    public int getIndividual() {
        return individual;
    }

    public void setIndividual(int individual) {
        this.individual = individual;
    }
    
}
