
package et.gov.csa.actions;

import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;

/**
 *
 * @author Istat Cooperation Unit
 */
@ParentPackage(value = "default")
public class LogoutAction extends ActionSupport {
    
    private static final long serialVersionUID = 3835087530613342172L;
    
    @Action("login")
    public String login() {
        return "login";
    }

    @Action("logout")
    public String logout() {
        ServletActionContext.getRequest().getSession().invalidate();
        return "logout";
    }
    
}

