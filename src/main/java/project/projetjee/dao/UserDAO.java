package project.projetjee.dao;

import project.projetjee.model.User;
import project.projetjee.dao.DataBaseConnection;

import java.sql.*;

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
}
