import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.mysql.cj.jdbc.Driver; //not java.sql

import javax.servlet.jsp.jstl.core.Config;


public class MySQLAdsDao implements Ads{

    private Connection connection;
////getter for connection when you want to test the connection with main method;
//    public Connection getConn(){
//        return connection;
//    }

    public MySQLAdsDao(){
        try {
            DriverManager.registerDriver(new Driver());
            this.connection = DriverManager.getConnection(

                    "jdbc:mysql://localhost:3306/adlister_db?serverTimezone=UTC&useSSL=false",
                    "root",

                    "codeup");

        }catch (SQLException e){
        e.printStackTrace();}
    }


    @Override
    public List<Ad> all() {
        try {
            Statement stmt = connection.createStatement();
            String findAllQuery = "SELECT * FROM ads";
            //runs query and accepts a resultset
            ResultSet rs = stmt.executeQuery(findAllQuery);
            //helper method to add query to existing ads
            return listedAds(rs);
        } catch (SQLException e) {
            e.printStackTrace();
            //RuntimeExc: throws exception it as soon as something is wrong
            throw new RuntimeException("problem with method to build ads");
        }
    }
//pulling from exists ads list
//helper method
    private List<Ad> listedAds(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        //iterate over result-set - while there is a new ad, store it in the list using new Ad object constructor;
        while(rs.next()) {
            ads.add(
                    new Ad( //include id because it needs to be shown - this is not creating it, just displaying what exists
                            rs.getLong("id"),
                            rs.getLong("user_id"),
                            rs.getString("title"),
                            rs.getString("description")

                    ));
        }
        return ads;
    }






    @Override
    public Long insert(Ad ad) {
        try {

//            Ad newAd = new Ad(
//                2, "title", "description");
            //String var to store values captured via Insert statement, using ad.get...
            Statement stmt = connection.createStatement();
            String insertQuery = String.format("INSERT INTO ads (user_id, title, description) VALUES (%d, '%s', '%s')",
                    ad.getUserid(),
                    ad.getTitle(),
                    ad.getDescription()
            );
            stmt.executeUpdate(insertQuery, Statement.RETURN_GENERATED_KEYS);

            ResultSet generatedKeys = stmt.getGeneratedKeys();
            generatedKeys.next();
            return generatedKeys.getLong(1);
//            if (generatedKeys.next()) {
//                System.out.println("Inserted a new record! New id: " + generatedKeys.getLong(1));
//            }

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("problem with building ads");
        }


    }


//    public static void main(String[] args) {
//        Config config = new Config();
//        MySQLAdsDao adsDao = new MySQLAdsDao(Config);
//        List<Ad> ads = adsDao.all();
//
//    System.out.println(ads.get(0).getTitle());
//    }


}

