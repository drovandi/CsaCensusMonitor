
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
@Table(name = "MR_RELIGION")
public class RReligion implements Serializable {

    private static final long serialVersionUID = -9007543673813658348L;

    private String religion;
    private int individuals;
    
    @Id
    @Column(name = "RELIGION", unique = true, nullable = false)
    public String getReligion() {
        return religion;
    }

    public void setReligion(String religion) {
        this.religion = religion;
    }

    @Column(name = "INDIVIDUALS")
    public int getIndividuals() {
        return individuals;
    }

    public void setIndividuals(int individuals) {
        this.individuals = individuals;
    }

}
