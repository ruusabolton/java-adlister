import com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion;

import java.util.ArrayList;
import java.util.List;

public class ListUsersDao implements Users {
    private List<User> users;

    public List<User> all() {
        if (users == null) {
            users = generateUsers();
        }
        return users;
    }


    private List<User> generateUsers() {
        List<User> users = new ArrayList<>();
        users.add(new User(
                "blue",
                "blue@gmail.com",
                "blue123"
        ));
        users.add(new User(
                "pink",
                "pink@gmail.com",
                "pink123"
        ));
        users.add(new User(
                "orange",
                "orange@gmail.com",
                "orange123"
        ));
        users.add(new User(
                "applePun",
                "apple@gmail.com",
                "apple123"
        ));
        return users;
    }

    ;

    public Long insert(User user) {
        // make sure we have users
        if (users == null) {
            users = generateUsers();
        } return 0L;
    }
}
