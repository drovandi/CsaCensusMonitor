
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
@Table(name = "MR_SEX_BY_AGE")
public class RSexByAge implements Serializable {

    private static final long serialVersionUID = -6827814928776184328L;

    private int age;
    private int total;
    private int total_male;
    private int total_female;

    @Id
    @Column(name = "AGE")
    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Column(name = "TOTAL")
    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    @Column(name = "TOTAL_MALE")
    public int getTotal_male() {
        return total_male;
    }

    public void setTotal_male(int total_male) {
        this.total_male = total_male;
    }

    @Column(name = "TOTAL_FEMALE")
    public int getTotal_female() {
        return total_female;
    }

    public void setTotal_female(int total_female) {
        this.total_female = total_female;
    }

}
