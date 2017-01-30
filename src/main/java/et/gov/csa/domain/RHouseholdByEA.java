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
@Table(name = "MR_HOUSEHOLD_BY_EA")
public class RHouseholdByEA implements Serializable {

    private static final long serialVersionUID = -672549009821546040L;

    private int id;
    private String name;
    private Integer household;

    @Id
    @Column(name = "ID", unique = true, nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name = "NAME")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name = "HOUSEHOLD")
    public Integer getHousehold() {
        return household;
    }

    public void setHousehold(Integer household) {
        this.household = household;
    }

}
