
package et.gov.csa.utility;

import com.opensymphony.xwork2.DefaultUnknownHandlerManager;
import com.opensymphony.xwork2.config.entities.ActionConfig;

/**
 *
 * @author Istat Cooperation Unit
 */
public class UnknownHandlerManager extends DefaultUnknownHandlerManager {

    @Override
    public Object handleUnknownMethod(Object action, String methodName) throws NoSuchMethodException {
        return null;
    }
    
    @Override
    public ActionConfig handleUnknownAction(String namespace, String actionName) {
        return null;
    }
    
}
