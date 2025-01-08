package project.projetjee.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import project.projetjee.dao.DataBaseConnection;
import project.projetjee.dao.UserDAO;
import project.projetjee.model.User;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ClientServlet", value = "/Client")
public class ClientServlet extends HttpServlet { // Extend HttpServlet
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        RequestDispatcher dispatcher;

        try (Connection connection = DataBaseConnection.getConnection()) {
            UserDAO userDAO = new UserDAO(connection);

            if ("list".equals(action)) {
                // List clients
                List<User> clients = userDAO.getClients(); // Implement getClients in UserDAO
                request.setAttribute("clients", clients);
                dispatcher = request.getRequestDispatcher("/WEB-INF/views/admin/ClientList.jsp");
                dispatcher.forward(request, response);

            } else if ("add".equals(action)) {
                // Display add client form
                dispatcher = request.getRequestDispatcher("/WEB-INF/views/admin/addClient.jsp");
                dispatcher.forward(request, response);

            } else if ("edit".equals(action)) {
                // Display edit client form
                int id = Integer.parseInt(request.getParameter("id"));
                User client = userDAO.findUserById(id); // Reuse the findUserById method
                request.setAttribute("client", client);
                dispatcher = request.getRequestDispatcher("/WEB-INF/views/admin/EditClient.jsp");
                dispatcher.forward(request, response);

            } else if ("delete".equals(action)) {
                // Delete client
                int id = Integer.parseInt(request.getParameter("id"));
                userDAO.deleteClient(id); // Implement deleteClient in UserDAO
                userDAO.deleteUser(id);   // Optionally delete from User table
                response.sendRedirect(request.getContextPath() + "/Client?action=list");
            } else {
                // Handle invalid or missing action
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid action.");
            }

        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error.");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        try (Connection connection = DataBaseConnection.getConnection()) {
            UserDAO userDAO = new UserDAO(connection);

            String idParam = request.getParameter("id");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            User client = new User();
            client.setNom(name);
            client.setEmail(email);
            client.setPassword(password);

            if ("add".equals(action)) {
                // Add new client
                int userId = userDAO.insertUser(client); // Insert into User table
                userDAO.insertClient(userId);           // Insert into Client table
            } else if ("edit".equals(action)) {
                // Update existing client
                if (idParam != null && !idParam.isEmpty()) {
                    int id = Integer.parseInt(idParam);
                    client.setId(id);
                    userDAO.updateUser(client); // Update client details in User table
                }
            }

            // Redirect back to client list
            response.sendRedirect(request.getContextPath() + "/Client?action=list");

        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error.");
        }
    }


}
