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
@Table(name = "MR_SEX_BY_AGE_GROUP")
public class RSexByAgeGroup implements Serializable {

    private static final long serialVersionUID = 2855428583098249553L;

    private int id;
    private String range;
    private int male;
    private int female;

    @Id
    @Column(name = "ID")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name = "RANGE")
    public String getRange() {
        return range;
    }

    public void setRange(String range) {
        this.range = range;
    }

    @Column(name = "MALE")
    public int getMale() {
        return male;
    }

    public void setMale(int male) {
        this.male = male;
    }

    @Column(name = "FEMALE")
    public int getFemale() {
        return female;
    }

    public void setFemale(int female) {
        this.female = female;
    }

}
