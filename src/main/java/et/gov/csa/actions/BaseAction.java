
package et.gov.csa.actions;

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
    
    public void setPrincipalProxy(PrincipalProxy principal) {
        this.principal = principal;
    }
    
    public PrincipalProxy getPrincipalProxy() {
        return principal;
    }
    
}
