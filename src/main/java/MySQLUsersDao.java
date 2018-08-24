import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.mysql.cj.jdbc.Driver;


public class MySQLUsersDao implements Users{

    private Connection connection;
    public MySQLUsersDao(){
        try {
            DriverManager.registerDriver(new Driver());
            this.connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/adlister_db?serverTimezone=UTC&useSSL=false",
                    "root",

                    "codeup");
    }catch (SQLException e){
        e.printStackTrace();}
    }
    private List<User> buildUsers(ResultSet rs) throws SQLException {
        List<User> users = new ArrayList<>();
        while(rs.next()) {
            users.add(
                    new User(
                            rs.getLong("id"),
                            rs.getString("username"),
                            rs.getString("email"),
                            rs.getString("password")

                    )
            );
        }
        return users;
    }


    @Override
    public List<User> all() {
        return null;
    }

    @Override
    public Long insert(User user) {
        return null;
    }
}
