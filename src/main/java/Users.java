import com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion;

import java.io.Serializable;
import java.util.List;

public interface Users  {
   // get a list of all the ads
   List<User> all();
   // insert a new ad and return the new ad's id
   Long insert(User user);}
