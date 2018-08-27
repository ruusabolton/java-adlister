package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLUsersDao implements Users {
    private Connection connection;
    Config config = new Config();

    public MySQLUsersDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUsername(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }


//    @Override
//    public List<User> all() {
//        PreparedStatement stmt = null;
//        try {
//            stmt =  connection.prepareStatement("SELECT * FROM users");
//            ResultSet rs = stmt.executeQuery();
//            return createUsersFromResults(rs);
//        } catch (SQLException e) {
//            throw new RuntimeException("Error retrieving all users.", e);
//        }
//    }

    @Override
    public User findByUsername(String username) {
        PreparedStatement stmt = null;
        try {
            stmt = (PreparedStatement) connection.prepareStatement("SELECT * FROM users where username =?");

            stmt.setString(1, username);
            return extractUser(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all users.", e);
        }
    }

    @Override
    public long insert(User user) {
        PreparedStatement stmt = null;

        try {
            stmt = connection.prepareStatement("INSERT INTO users (username, email, password) VALUES (?, ?,?)");

                stmt.setString(1, user.getUsername());
                stmt.setString(2, user.getEmail());
                stmt.setString(3, user.getPassword());


            stmt.executeUpdate();
//            createInsertQuery(user), Statement.RETURN_GENERATED_KEYS);


            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);

        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new user.", e);
        }
    }

//to be used in public insert method

    private String createInsertQuery(User user) {
        return "INSERT INTO users(username, email, password) VALUES "
            + "(" + user.getUsername() + ", "
            + "'" + user.getEmail() +"', "
            + "'" + user.getPassword() + "')";
    }

//to be used in pvt createUsersfromResult

    private User extractUser(ResultSet rs) throws SQLException {
        return new User(
            rs.getLong("id"),
            rs.getString("username"),
            rs.getString("email"),
            rs.getString("password")

                );
    }
//to be used in list-all method
    private List<User> createUsersFromResults(ResultSet rs) throws SQLException {
        List<User> users = new ArrayList<>();
        while (rs.next()) {
            users.add(extractUser(rs));
        }
        return users;
    }
}
