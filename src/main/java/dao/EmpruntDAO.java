package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import models.Emprunt;

public class EmpruntDAO {

    private static final String URL = "jdbc:mysql://localhost:3308/library_management?useSSL=false&allowPublicKeyRetrieval=true";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    private Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }

    public List<Emprunt> findEmpruntsByClientId(int clientId) {
        List<Emprunt> emprunts = new ArrayList<>();
        String query = "SELECT * FROM emprunts WHERE client_id = ?";
        
        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            
            stmt.setInt(1, clientId);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    Emprunt emprunt = new Emprunt();
                    emprunt.setId(rs.getInt("id"));
                    emprunt.setClientId(rs.getInt("client_id"));
                    emprunt.setLivreId(rs.getInt("livre_id"));
                    emprunt.setDateEmprunt(rs.getDate("date_emprunt"));
                    emprunt.setDateRetour(rs.getDate("date_retour"));
                    emprunt.setStatus(rs.getString("status"));
                    emprunts.add(emprunt);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return emprunts;
    }
}
