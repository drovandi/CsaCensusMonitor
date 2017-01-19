
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
@Table(name = "MR_INDIVIDUAL_INFO")
public class RIndividualInfo implements Serializable {

    private static final long serialVersionUID = 5859143976887320410L;

    private int total;
    private int total_male;
    private int total_female;
    private double age_avg;
    private double age_avg_male;
    private double age_avg_female;
    private int age_max;
    private int age_max_male;
    private int age_max_female;
    
    @Id
    @Column(name = "TOTAL", unique = true, nullable = false)
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

    @Column(name = "AGE_AVG")
    public double getAge_avg() {
        return age_avg;
    }

    public void setAge_avg(double age_avg) {
        this.age_avg = age_avg;
    }

    @Column(name = "AGE_AVG_MALE")
    public double getAge_avg_male() {
        return age_avg_male;
    }

    public void setAge_avg_male(double age_avg_male) {
        this.age_avg_male = age_avg_male;
    }

    @Column(name = "AGE_AVG_FEMALE")
    public double getAge_avg_female() {
        return age_avg_female;
    }

    public void setAge_avg_female(double age_avg_female) {
        this.age_avg_female = age_avg_female;
    }

    @Column(name = "AGE_MAX")
    public int getAge_max() {
        return age_max;
    }

    public void setAge_max(int age_max) {
        this.age_max = age_max;
    }

    @Column(name = "AGE_MAX_MALE")
    public int getAge_max_male() {
        return age_max_male;
    }

    public void setAge_max_male(int age_max_male) {
        this.age_max_male = age_max_male;
    }

    @Column(name = "AGE_MAX_FEMALE")
    public int getAge_max_female() {
        return age_max_female;
    }

    public void setAge_max_female(int age_max_female) {
        this.age_max_female = age_max_female;
    }
    
}
