import java.sql.Connection;
import java.sql.SQLException;

import dao.DBConnection;

public class TestConnection {
    public static void main(String[] args) {
        try (Connection conn = DBConnection.getConnection()) {
            System.out.println("Connexion réussie !");
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Erreur de connexion : " + e.getMessage());
        }
    }
}
