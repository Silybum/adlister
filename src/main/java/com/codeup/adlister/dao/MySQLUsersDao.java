package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLUsersDao implements Users {
    private final Connection connection;

    public MySQLUsersDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }


    @Override
    public User findByUsername(String username) {
        String query = "SELECT * FROM users WHERE username = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, username);
            return extractUser(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username", e);
        }
    }

    public User findById(long id) {
        String query = "SELECT * FROM users WHERE id = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, String.valueOf(id));
            return extractUser(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Errortrying to find user by Id", e);
        }
    }

    @Override

    public Boolean check(User user) {
        if (findByUsername(user.getUsername()) != null) {
            return true;
        } else {
            return false;
        }
    }

        public void editUser (User user){
            String updateQuery = "UPDATE users SET username = ?, email = ?, password = ? WHERE id = ?";

            try {
                PreparedStatement stmt = connection.prepareStatement(updateQuery);
                stmt.setString(1, user.getUsername());
                stmt.setString(2, user.getEmail());
                stmt.setString(3, user.getPassword());
                stmt.setLong(4, user.getId());
                stmt.executeUpdate();

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        @Override
        public Long insert (User user){
            String query = "INSERT INTO users(username, email, password) VALUES (?, ?, ?)";
            try {
                PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
                stmt.setString(1, user.getUsername());
                stmt.setString(2, user.getEmail());
                stmt.setString(3, user.getPassword());
                stmt.executeUpdate();
                ResultSet rs = stmt.getGeneratedKeys();
                rs.next();
                return rs.getLong(1);
            } catch (SQLException e) {
                throw new RuntimeException("Error creating new user", e);
            }
        }

    private User extractUser(ResultSet rs) throws SQLException {
        if (!rs.next()) {
            return null;
        }
        return new User(
                rs.getLong("id"),
                rs.getString("username"),
                rs.getString("email"),
                rs.getString("password")
        );
    }


}
