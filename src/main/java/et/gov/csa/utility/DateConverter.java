
package et.gov.csa.utility;

import java.text.SimpleDateFormat;
import java.util.Map;
import org.apache.struts2.util.StrutsTypeConverter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 *
 * @author Istat Cooperation Unit
 */
public class DateConverter extends StrutsTypeConverter {
    
    private static final transient Logger LOGGER = LoggerFactory.getLogger(DateConverter.class);
    private static final transient SimpleDateFormat SDF = new SimpleDateFormat("dd/MM/yyyy");
    
    @Override
    public Object convertFromString(Map context, String[] values, Class toClass) {
        try {
            if (values[0]!=null && !(values[0].length()==0)) {
                synchronized (SDF) {
                    return SDF.parse(values[0].replace(".",""));
                }
            }
            return null;
        } catch (java.text.ParseException ex) {
            LOGGER.error("Errore nel DateConverter", ex);
            return values[0];
        }
    }
    
    @Override
    public String convertToString(Map context, Object o) {
        if (o!=null) {
            synchronized (SDF) {
                return SDF.format(o);
            }
        }
        return "";
    }

}
