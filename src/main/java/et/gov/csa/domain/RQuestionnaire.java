
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
@Table(name = "R_QUESTIONNAIRE")
public class RQuestionnaire implements Serializable {

    private static final long serialVersionUID = 5908852901662100276L;

    private int household;
    private int completed;
    private int notCompleted;
    private int COMPLETED_Addis_Ababa;
    private int NOT_COMPLETED_Addis_Ababa;
    private int COMPLETED_Afar;
    private int NOT_COMPLETED_Afar;
    private int COMPLETED_Amhara;
    private int NOT_COMPLETED_Amhara;
    private int COMPLETED_Benishangul_Gumuz;
    private int NOT_COMPLETED_Benishangul_Gumuz;
    private int COMPLETED_Dire_Dawa;
    private int NOT_COMPLETED_Dire_Dawa;
    private int COMPLETED_Gambela;
    private int NOT_COMPLETED_Gambela;
    private int COMPLETED_Harari;
    private int NOT_COMPLETED_Harari;
    private int COMPLETED_Oromia;
    private int NOT_COMPLETED_Oromia;
    private int COMPLETED_Somali;
    private int NOT_COMPLETED_Somali;
    private int COMPLETED_Southern;
    private int NOT_COMPLETED_Southern;
    private int COMPLETED_Tigray;
    private int NOT_COMPLETED_Tigray;
        
    @Id
    @Column(name = "HOUSEHOLD", unique = true, nullable = false)
    public int getHousehold() {
        return household;
    }

    public void setHousehold(int household) {
        this.household = household;
    }

    @Column(name = "COMPLETED")
    public int getCompleted() {
        return completed;
    }

    public void setCompleted(int completed) {
        this.completed = completed;
    }

    @Column(name = "NOT_COMPLETED")
    public int getNotCompleted() {
        return notCompleted;
    }

    public void setNotCompleted(int notCompleted) {
        this.notCompleted = notCompleted;
    }

    @Column(name = "COMPLETED_Addis_Ababa")
    public int getCOMPLETED_Addis_Ababa() {
        return COMPLETED_Addis_Ababa;
    }

    public void setCOMPLETED_Addis_Ababa(int COMPLETED_Addis_Ababa) {
        this.COMPLETED_Addis_Ababa = COMPLETED_Addis_Ababa;
    }

    @Column(name = "NOT_COMPLETED_Addis_Ababa")
    public int getNOT_COMPLETED_Addis_Ababa() {
        return NOT_COMPLETED_Addis_Ababa;
    }

    public void setNOT_COMPLETED_Addis_Ababa(int NOT_COMPLETED_Addis_Ababa) {
        this.NOT_COMPLETED_Addis_Ababa = NOT_COMPLETED_Addis_Ababa;
    }

    @Column(name = "COMPLETED_Afar")
    public int getCOMPLETED_Afar() {
        return COMPLETED_Afar;
    }

    public void setCOMPLETED_Afar(int COMPLETED_Afar) {
        this.COMPLETED_Afar = COMPLETED_Afar;
    }

    @Column(name = "NOT_COMPLETED_Afar")
    public int getNOT_COMPLETED_Afar() {
        return NOT_COMPLETED_Afar;
    }

    public void setNOT_COMPLETED_Afar(int NOT_COMPLETED_Afar) {
        this.NOT_COMPLETED_Afar = NOT_COMPLETED_Afar;
    }

    @Column(name = "COMPLETED_Amhara")
    public int getCOMPLETED_Amhara() {
        return COMPLETED_Amhara;
    }

    public void setCOMPLETED_Amhara(int COMPLETED_Amhara) {
        this.COMPLETED_Amhara = COMPLETED_Amhara;
    }

    @Column(name = "NOT_COMPLETED_Amhara")
    public int getNOT_COMPLETED_Amhara() {
        return NOT_COMPLETED_Amhara;
    }

    public void setNOT_COMPLETED_Amhara(int NOT_COMPLETED_Amhara) {
        this.NOT_COMPLETED_Amhara = NOT_COMPLETED_Amhara;
    }

    @Column(name = "COMPLETED_Benishangul_Gumuz")
    public int getCOMPLETED_Benishangul_Gumuz() {
        return COMPLETED_Benishangul_Gumuz;
    }

    public void setCOMPLETED_Benishangul_Gumuz(int COMPLETED_Benishangul_Gumuz) {
        this.COMPLETED_Benishangul_Gumuz = COMPLETED_Benishangul_Gumuz;
    }

    @Column(name = "NOT_COMPLETED_Benishangul_Gumuz")
    public int getNOT_COMPLETED_Benishangul_Gumuz() {
        return NOT_COMPLETED_Benishangul_Gumuz;
    }

    public void setNOT_COMPLETED_Benishangul_Gumuz(int NOT_COMPLETED_Benishangul_Gumuz) {
        this.NOT_COMPLETED_Benishangul_Gumuz = NOT_COMPLETED_Benishangul_Gumuz;
    }

    @Column(name = "COMPLETED_Dire_Dawa")
    public int getCOMPLETED_Dire_Dawa() {
        return COMPLETED_Dire_Dawa;
    }

    public void setCOMPLETED_Dire_Dawa(int COMPLETED_Dire_Dawa) {
        this.COMPLETED_Dire_Dawa = COMPLETED_Dire_Dawa;
    }

    @Column(name = "NOT_COMPLETED_Dire_Dawa")
    public int getNOT_COMPLETED_Dire_Dawa() {
        return NOT_COMPLETED_Dire_Dawa;
    }

    public void setNOT_COMPLETED_Dire_Dawa(int NOT_COMPLETED_Dire_Dawa) {
        this.NOT_COMPLETED_Dire_Dawa = NOT_COMPLETED_Dire_Dawa;
    }

    @Column(name = "COMPLETED_Gambela")
    public int getCOMPLETED_Gambela() {
        return COMPLETED_Gambela;
    }

    public void setCOMPLETED_Gambela(int COMPLETED_Gambela) {
        this.COMPLETED_Gambela = COMPLETED_Gambela;
    }

    @Column(name = "NOT_COMPLETED_Gambela")
    public int getNOT_COMPLETED_Gambela() {
        return NOT_COMPLETED_Gambela;
    }

    public void setNOT_COMPLETED_Gambela(int NOT_COMPLETED_Gambela) {
        this.NOT_COMPLETED_Gambela = NOT_COMPLETED_Gambela;
    }

    @Column(name = "COMPLETED_Harari")
    public int getCOMPLETED_Harari() {
        return COMPLETED_Harari;
    }

    public void setCOMPLETED_Harari(int COMPLETED_Harari) {
        this.COMPLETED_Harari = COMPLETED_Harari;
    }

    @Column(name = "NOT_COMPLETED_Harari")
    public int getNOT_COMPLETED_Harari() {
        return NOT_COMPLETED_Harari;
    }

    public void setNOT_COMPLETED_Harari(int NOT_COMPLETED_Harari) {
        this.NOT_COMPLETED_Harari = NOT_COMPLETED_Harari;
    }

    @Column(name = "COMPLETED_Oromia")
    public int getCOMPLETED_Oromia() {
        return COMPLETED_Oromia;
    }

    public void setCOMPLETED_Oromia(int COMPLETED_Oromia) {
        this.COMPLETED_Oromia = COMPLETED_Oromia;
    }

    @Column(name = "NOT_COMPLETED_Oromia")
    public int getNOT_COMPLETED_Oromia() {
        return NOT_COMPLETED_Oromia;
    }

    public void setNOT_COMPLETED_Oromia(int NOT_COMPLETED_Oromia) {
        this.NOT_COMPLETED_Oromia = NOT_COMPLETED_Oromia;
    }

    @Column(name = "COMPLETED_Somali")
    public int getCOMPLETED_Somali() {
        return COMPLETED_Somali;
    }

    public void setCOMPLETED_Somali(int COMPLETED_Somali) {
        this.COMPLETED_Somali = COMPLETED_Somali;
    }

    @Column(name = "NOT_COMPLETED_Somali")
    public int getNOT_COMPLETED_Somali() {
        return NOT_COMPLETED_Somali;
    }

    public void setNOT_COMPLETED_Somali(int NOT_COMPLETED_Somali) {
        this.NOT_COMPLETED_Somali = NOT_COMPLETED_Somali;
    }

    @Column(name = "COMPLETED_Southern")
    public int getCOMPLETED_Southern() {
        return COMPLETED_Southern;
    }

    public void setCOMPLETED_Southern(int COMPLETED_Southern) {
        this.COMPLETED_Southern = COMPLETED_Southern;
    }

    @Column(name = "NOT_COMPLETED_Southern")
    public int getNOT_COMPLETED_Southern() {
        return NOT_COMPLETED_Southern;
    }

    public void setNOT_COMPLETED_Southern(int NOT_COMPLETED_Southern) {
        this.NOT_COMPLETED_Southern = NOT_COMPLETED_Southern;
    }

    @Column(name = "COMPLETED_Tigray")
    public int getCOMPLETED_Tigray() {
        return COMPLETED_Tigray;
    }

    public void setCOMPLETED_Tigray(int COMPLETED_Tigray) {
        this.COMPLETED_Tigray = COMPLETED_Tigray;
    }

    @Column(name = "NOT_COMPLETED_Tigray")
    public int getNOT_COMPLETED_Tigray() {
        return NOT_COMPLETED_Tigray;
    }

    public void setNOT_COMPLETED_Tigray(int NOT_COMPLETED_Tigray) {
        this.NOT_COMPLETED_Tigray = NOT_COMPLETED_Tigray;
    }
    
}
