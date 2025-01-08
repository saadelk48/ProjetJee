package project.projetjee.dao;

import project.projetjee.model.User;
import project.projetjee.dao.DataBaseConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
    private Connection connection;

    // Constructeur avec connexion
    public UserDAO(Connection connection) {
        this.connection = connection;
    }

    // Méthode pour insérer un utilisateur
    public int insertUser(User user) throws SQLException {
        String query = "INSERT INTO User (nom, email, password) VALUES (?, ?, ?)";
        PreparedStatement pstmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
        pstmt.setString(1, user.getNom());
        pstmt.setString(2, user.getEmail());
        pstmt.setString(3, user.getPassword());
        pstmt.executeUpdate();

        // Récupérer l'ID généré
        ResultSet rs = pstmt.getGeneratedKeys();
        if (rs.next()) {
            return rs.getInt(1); // Retourne l'ID généré
        }
        return -1; // Aucun ID généré
    }

    // Méthode pour insérer un client
    public void insertClient(int userId) throws SQLException {
        String query = "INSERT INTO Client (id) VALUES (?)";
        PreparedStatement pstmt = connection.prepareStatement(query);
        pstmt.setInt(1, userId);
        pstmt.executeUpdate();
    }

    public User findUserByEmailAndPassword(String email, String password) throws SQLException {
        String query = "SELECT * FROM User WHERE email = ? AND password = ?";
        PreparedStatement pstmt = connection.prepareStatement(query);
        pstmt.setString(1, email);
        pstmt.setString(2, password);

        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) {
            User user = new User();
            user.setId(rs.getInt("id"));
            user.setNom(rs.getString("nom"));
            user.setEmail(rs.getString("email"));
            user.setPassword(rs.getString("password"));
            return user;
        }
        return null;
    }

    public boolean isAdmin(int userId) throws SQLException {
        String query = "SELECT * FROM Admin WHERE id = ?";
        PreparedStatement pstmt = connection.prepareStatement(query);
        pstmt.setInt(1, userId);

        ResultSet rs = pstmt.executeQuery();
        return rs.next(); // Retourne true si l'utilisateur est un admin
    }

    public List<User> getAdmins() throws SQLException {
        String query = "SELECT u.id, u.nom, u.email, u.password " +
                "FROM Admin a " +
                "JOIN User u ON a.id = u.id";
        PreparedStatement pstmt = connection.prepareStatement(query);

        ResultSet rs = pstmt.executeQuery();

        List<User> admins = new ArrayList<>();
        while (rs.next()) {
            User user = new User();
            user.setId(rs.getInt("id"));
            user.setNom(rs.getString("nom"));
            user.setEmail(rs.getString("email"));
            user.setPassword(rs.getString("password"));
            admins.add(user);
        }
        return admins;
    }

    public void insertAdmin(int userId) throws SQLException {
        // Check if the user ID exists in the User table before inserting into Admin
        String checkQuery = "SELECT id FROM User WHERE id = ?";
        PreparedStatement checkStmt = connection.prepareStatement(checkQuery);
        checkStmt.setInt(1, userId);
        ResultSet rs = checkStmt.executeQuery();

        if (rs.next()) {
            // If the user exists, insert into the Admin table
            String query = "INSERT INTO Admin (id) VALUES (?)";
            PreparedStatement pstmt = connection.prepareStatement(query);
            pstmt.setInt(1, userId);
            pstmt.executeUpdate();
        } else {
            throw new SQLException("User ID not found. Cannot insert into Admin.");
        }
    }
    public void updateUser(User user) throws SQLException {
        String query = "UPDATE User SET nom = ?, email = ?, password = ? WHERE id = ?";
        PreparedStatement pstmt = connection.prepareStatement(query);
        pstmt.setString(1, user.getNom());
        pstmt.setString(2, user.getEmail());
        pstmt.setString(3, user.getPassword());
        pstmt.setInt(4, user.getId());
        pstmt.executeUpdate();
    }
    public User findUserById(int id) throws SQLException {
        String query = "SELECT * FROM User WHERE id = ?";
        PreparedStatement pstmt = connection.prepareStatement(query);
        pstmt.setInt(1, id);

        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) {
            User user = new User();
            user.setId(rs.getInt("id"));
            user.setNom(rs.getString("nom"));
            user.setEmail(rs.getString("email"));
            user.setPassword(rs.getString("password"));
            return user;
        }
        return null;
    }
    public void deleteUser(int userId) throws SQLException {
        String query = "DELETE FROM User WHERE id = ?";
        PreparedStatement pstmt = connection.prepareStatement(query);
        pstmt.setInt(1, userId);
        pstmt.executeUpdate();
    }

    public void deleteAdmin(int userId) throws SQLException {
        String query = "DELETE FROM Admin WHERE id = ?";
        PreparedStatement pstmt = connection.prepareStatement(query);
        pstmt.setInt(1, userId);
        pstmt.executeUpdate();
    }

    public List<User> getClients() throws SQLException {
        String query = "SELECT u.id, u.nom, u.email, u.password " +
                "FROM Client c " +
                "JOIN User u ON c.id = u.id";
        PreparedStatement pstmt = connection.prepareStatement(query);

        ResultSet rs = pstmt.executeQuery();
        List<User> clients = new ArrayList<>();
        while (rs.next()) {
            User user = new User();
            user.setId(rs.getInt("id"));
            user.setNom(rs.getString("nom"));
            user.setEmail(rs.getString("email"));
            user.setPassword(rs.getString("password"));
            clients.add(user);
        }
        return clients;
    }
    public void deleteClient(int userId) throws SQLException {
        String query = "DELETE FROM Client WHERE id = ?";
        PreparedStatement pstmt = connection.prepareStatement(query);
        pstmt.setInt(1, userId);
        pstmt.executeUpdate();
    }

}
