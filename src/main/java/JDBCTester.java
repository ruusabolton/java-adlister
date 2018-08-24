import java.sql.*;

import com.mysql.cj.jdbc.Driver;

public class JDBCTester {
 public static Connection connection;
    public static void main(String[] args) {
        try {

            DriverManager.registerDriver(new Driver());
             connection = DriverManager.getConnection(

             "jdbc:mysql://localhost:3306/adlister_db?serverTimezone=UTC&useSSL=false",
                    "root",

               "codeup");




            }catch (SQLException e){
            e.printStackTrace();}


  try {  Statement statement = connection.createStatement();
    String query = "SELECT * FROM ads";

    ResultSet rs = statement.executeQuery(query);

            rs.next();

            System.out.println(rs.getString(1));
            System.out.println(rs.getString(2));
            System.out.println(rs.getString(3));
            System.out.println(rs.getString(4));
            System.out.println(rs.getString(5));
            System.out.println(rs.getString(6));}
            catch(SQLException e){
                e.printStackTrace();
            }
}}
