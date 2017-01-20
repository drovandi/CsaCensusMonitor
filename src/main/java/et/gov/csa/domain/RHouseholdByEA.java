
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
    private String region;
    private int zone;
    private int woreda;
    private int city;
    private int subcity;
    private int psa;
    private int sa;
    private int kebele;
    private int ea;
    private int household;
    
    @Id
    @Column(name = "ID", unique = true, nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    
    @Column(name = "REGION")
    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    @Column(name = "ZONE")
    public int getZone() {
        return zone;
    }

    public void setZone(int zone) {
        this.zone = zone;
    }

    @Column(name = "WOREDA")
    public int getWoreda() {
        return woreda;
    }

    public void setWoreda(int woreda) {
        this.woreda = woreda;
    }

    @Column(name = "CITY")
    public int getCity() {
        return city;
    }

    public void setCity(int city) {
        this.city = city;
    }

    @Column(name = "SUBCITY")
    public int getSubcity() {
        return subcity;
    }

    public void setSubcity(int subcity) {
        this.subcity = subcity;
    }

    @Column(name = "PSA")
    public int getPsa() {
        return psa;
    }

    public void setPsa(int psa) {
        this.psa = psa;
    }

    @Column(name = "SA")
    public int getSa() {
        return sa;
    }

    public void setSa(int sa) {
        this.sa = sa;
    }

    @Column(name = "KEBELE")
    public int getKebele() {
        return kebele;
    }

    public void setKebele(int kebele) {
        this.kebele = kebele;
    }

    @Column(name = "EA")
    public int getEa() {
        return ea;
    }

    public void setEa(int ea) {
        this.ea = ea;
    }

    @Column(name = "HOUSEHOLD")
    public int getHousehold() {
        return household;
    }

    public void setHousehold(int household) {
        this.household = household;
    }

}
