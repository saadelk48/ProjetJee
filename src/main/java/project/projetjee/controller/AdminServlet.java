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

@WebServlet(name = "AdminServlet", value = "/Admin")
public class AdminServlet extends HttpServlet { // Extend HttpServlet
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        RequestDispatcher dispatcher;

        try (Connection connection = DataBaseConnection.getConnection()) {
            UserDAO userDAO = new UserDAO(connection);

            if ("list".equals(action)) {
                // Handle listing admins
                List<User> admins = userDAO.getAdmins();
                request.setAttribute("admins", admins);
                dispatcher = request.getRequestDispatcher("/WEB-INF/views/admin/AdminList.jsp");
                dispatcher.forward(request, response);

            } else if ("add".equals(action)) {
                // Handle adding an admin (display add form)
                dispatcher = request.getRequestDispatcher("/WEB-INF/views/admin/AddAdmin.jsp");
                dispatcher.forward(request, response);

            } else if ("edit".equals(action)) {
                // Handle editing an admin (display edit form)
                int id = Integer.parseInt(request.getParameter("id"));
                User admin = userDAO.findUserById(id); // Implement this method in UserDAO
                request.setAttribute("admin", admin);
                dispatcher = request.getRequestDispatcher("/WEB-INF/views/admin/EditAdmin.jsp");
                dispatcher.forward(request, response);

            } else if ("delete".equals(action)) {
                // Handle deleting an admin
                int id = Integer.parseInt(request.getParameter("id"));
                userDAO.deleteAdmin(id); // Delete from Admin table
                userDAO.deleteUser(id);  // Optionally delete from User table
                response.sendRedirect(request.getContextPath() + "/Admin?action=list");
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
        String idParam = request.getParameter("id"); // Admin ID (for updates)
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try (Connection connection = DataBaseConnection.getConnection()) {
            UserDAO userDAO = new UserDAO(connection);

            User user = new User();
            user.setNom(name);
            user.setEmail(email);
            user.setPassword(password);

            if (idParam != null && !idParam.isEmpty()) {
                // Update existing admin
                int id = Integer.parseInt(idParam);
                user.setId(id);
                userDAO.updateUser(user); // Update admin details in User table
            } else {
                // Add new admin
                int userId = userDAO.insertUser(user); // Insert into User table
                userDAO.insertAdmin(userId);          // Insert into Admin table
            }

            // Redirect back to admin list
            response.sendRedirect(request.getContextPath() + "/Admin?action=list");
        } catch (SQLException ex) {
            throw new ServletException("Error processing admin", ex);
        }
    }

}
