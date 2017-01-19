
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

    private static final long serialVersionUID = -6827814928776184328L;

    private int male_0_4;
    private int female_0_4;
    private int male_5_10;
    private int female_5_10;
    private int male_11_16;
    private int female_11_16;
    private int male_17_25;
    private int female_17_25;
    private int male_26_34;
    private int female_26_34;
    private int male_35_45;
    private int female_35_45;
    private int male_46_55;
    private int female_46_55;
    private int male_56_65;
    private int female_56_65;
    private int male_66_75;
    private int female_66_75;
    private int male_76_99;
    private int female_76_99;

    @Id
    @Column(name = "MALE_0_4")
    public int getMale_0_4() {
        return male_0_4;
    }

    public void setMale_0_4(int male_0_4) {
        this.male_0_4 = male_0_4;
    }

    @Column(name = "FEMALE_0_4")
    public int getFemale_0_4() {
        return female_0_4;
    }

    public void setFemale_0_4(int female_0_4) {
        this.female_0_4 = female_0_4;
    }

    @Column(name = "MALE_5_10")
    public int getMale_5_10() {
        return male_5_10;
    }

    public void setMale_5_10(int male_5_10) {
        this.male_5_10 = male_5_10;
    }

    @Column(name = "FEMALE_5_10")
    public int getFemale_5_10() {
        return female_5_10;
    }

    public void setFemale_5_10(int female_5_10) {
        this.female_5_10 = female_5_10;
    }

    @Column(name = "MALE_11_16")
    public int getMale_11_16() {
        return male_11_16;
    }

    public void setMale_11_16(int male_11_16) {
        this.male_11_16 = male_11_16;
    }

    @Column(name = "FEMALE_11_16")
    public int getFemale_11_16() {
        return female_11_16;
    }

    public void setFemale_11_16(int female_11_16) {
        this.female_11_16 = female_11_16;
    }

    @Column(name = "MALE_17_25")
    public int getMale_17_25() {
        return male_17_25;
    }

    public void setMale_17_25(int male_17_25) {
        this.male_17_25 = male_17_25;
    }

    @Column(name = "FEMALE_17_25")
    public int getFemale_17_25() {
        return female_17_25;
    }

    public void setFemale_17_25(int female_17_25) {
        this.female_17_25 = female_17_25;
    }

    @Column(name = "MALE_26_34")
    public int getMale_26_34() {
        return male_26_34;
    }

    public void setMale_26_34(int male_26_34) {
        this.male_26_34 = male_26_34;
    }

    @Column(name = "FEMALE_26_34")
    public int getFemale_26_34() {
        return female_26_34;
    }

    public void setFemale_26_34(int female_26_34) {
        this.female_26_34 = female_26_34;
    }

    @Column(name = "MALE_35_45")
    public int getMale_35_45() {
        return male_35_45;
    }

    public void setMale_35_45(int male_35_45) {
        this.male_35_45 = male_35_45;
    }

    @Column(name = "FEMALE_35_45")
    public int getFemale_35_45() {
        return female_35_45;
    }

    public void setFemale_35_45(int female_35_45) {
        this.female_35_45 = female_35_45;
    }

    @Column(name = "MALE_46_55")
    public int getMale_46_55() {
        return male_46_55;
    }

    public void setMale_46_55(int male_46_55) {
        this.male_46_55 = male_46_55;
    }

    @Column(name = "FEMALE_46_55")
    public int getFemale_46_55() {
        return female_46_55;
    }

    public void setFemale_46_55(int female_46_55) {
        this.female_46_55 = female_46_55;
    }

    @Column(name = "MALE_56_65")
    public int getMale_56_65() {
        return male_56_65;
    }

    public void setMale_56_65(int male_56_65) {
        this.male_56_65 = male_56_65;
    }

    @Column(name = "FEMALE_56_65")
    public int getFemale_56_65() {
        return female_56_65;
    }

    public void setFemale_56_65(int female_56_65) {
        this.female_56_65 = female_56_65;
    }

    @Column(name = "MALE_66_75")
    public int getMale_66_75() {
        return male_66_75;
    }

    public void setMale_66_75(int male_66_75) {
        this.male_66_75 = male_66_75;
    }

    @Column(name = "FEMALE_66_75")
    public int getFemale_66_75() {
        return female_66_75;
    }

    public void setFemale_66_75(int female_66_75) {
        this.female_66_75 = female_66_75;
    }

    @Column(name = "MALE_76_99")
    public int getMale_76_99() {
        return male_76_99;
    }

    public void setMale_76_99(int male_76_99) {
        this.male_76_99 = male_76_99;
    }

    @Column(name = "FEMALE_76_99")
    public int getFemale_76_99() {
        return female_76_99;
    }

    public void setFemale_76_99(int female_76_99) {
        this.female_76_99 = female_76_99;
    }

}

