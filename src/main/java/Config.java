import java.sql.Connection;
import java.sql.DriverManager;

public class Config {

//    Create a class named Config.java that will hold our database configuration. Add this file to the .gitignore.
//
//            This class should have 3 private instance properties, url, user, and password, all of which should be strings, as well as getters for those properties.




    public String getUrl()
    {
        return "jdbc:mysql://localhost:3306/adlister_db?serverTimezone=UTC&useSSL=false";
    }

    public String getUser(){
        return "root";
    }

    public String getPassword(){
        return "codeup";
    }


}
