
package et.gov.csa.actions;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectReader;
import com.fasterxml.jackson.databind.ObjectWriter;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.PrincipalAware;
import org.apache.struts2.interceptor.PrincipalProxy;

/**
 *
 * @author Istat Cooperation Unit
 */
public abstract class BaseAction extends ActionSupport implements PrincipalAware {

    private static final long serialVersionUID = -9052055435350403347L;
    
    private PrincipalProxy principal;
    
    static final ObjectMapper MAPPER = new ObjectMapper();
    static final ObjectWriter WRITER = MAPPER.writer();
    static final ObjectReader READER = MAPPER.reader();
    
    public void setPrincipalProxy(PrincipalProxy principal) {
        this.principal = principal;
    }
    
    public PrincipalProxy getPrincipalProxy() {
        return principal;
    }
    
    public double percentage(int a, int b) {
        if (a+b==0) return 0;
        return Math.round(1000.*a/(a+b))/10.;
    }
    
}
