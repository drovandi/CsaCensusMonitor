
package et.gov.csa.actions.secure.main;

import et.gov.csa.actions.*;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;

/**
 *
 * @author Istat Cooperation Unit
 */
@ParentPackage(value = "default")
public class MainAction extends BaseAction {

    private static final long serialVersionUID = 3184381834898185886L;

    @Action("")
    public String start() {
        return "start";
    }
    
}
