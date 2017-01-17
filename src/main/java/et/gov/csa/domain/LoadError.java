package et.gov.csa.domain;

import java.util.Date;
import javax.ejb.Timeout;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author Istat Cooperation Unit
 */
@Entity
@Table(name = "CSPRO2SQL_ERRORS")
public class LoadError {
    
    private long id;
    private String error;
    private Date date;
    private String questionnaire;
    private String sqlScript;
    
    @Id
    @Column(name = "ID", unique = true, nullable = false)
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Column(name="ERROR", length=2048, nullable = true)
    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="DATE", length=7)
    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Column(name="QUESTIONNAIRE", length = 65535)
    public String getQuestionnaire() {
        return questionnaire;
    }

    public void setQuestionnaire(String questionnaire) {
        this.questionnaire = questionnaire;
    }

    @Column(name="SQL_SCRIPT", length = 65535)
    public String getSqlScript() {
        return sqlScript;
    }

    public void setSqlScript(String sqlScript) {
        this.sqlScript = sqlScript;
    }
    
}
