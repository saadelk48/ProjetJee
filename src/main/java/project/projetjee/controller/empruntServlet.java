package project.projetjee.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import project.projetjee.dao.DataBaseConnection;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/emprunt")
public class empruntServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int clientId = Integer.parseInt(request.getParameter("clientId"));
        int livreId = Integer.parseInt(request.getParameter("livreId"));
        String dateEmprunt = request.getParameter("dateEmprunt");
        String dateRetour = request.getParameter("dateRetour");
        String status = request.getParameter("status");

        try (Connection connection = DataBaseConnection.getConnection()) {
            String sql = "INSERT INTO emprunt (client_id, livre_id, date_emprunt, date_retour, status) VALUES (?, ?, ?, ?, ?)";
            try (PreparedStatement stmt = connection.prepareStatement(sql)) {
                stmt.setInt(1, clientId);
                stmt.setInt(2, livreId);
                stmt.setString(3, dateEmprunt);
                stmt.setString(4, dateRetour);
                stmt.setString(5, status);
                stmt.executeUpdate();
            }
            response.sendRedirect("clientApp?page=index");
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error: Unable to process emprunt.");
        }
    }
}

