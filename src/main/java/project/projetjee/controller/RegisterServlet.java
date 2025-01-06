package project.projetjee.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import project.projetjee.Services.UserService;
import project.projetjee.dao.DataBaseConnection;
import project.projetjee.model.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action"); // Récupère l'action : register ou login

        try (Connection connection = DataBaseConnection.getConnection()) {
            UserService userService = new UserService(connection);

            if ("register".equals(action)) {
                handleRegistration(request, response, userService);
            } else if ("login".equals(action)) {
                handleLogin(request, response, userService);
            } else {
                // Si aucune action n'est spécifiée, redirige vers une page d'erreur ou de login
                response.sendRedirect(request.getContextPath() + "/login.jsp");
            }
        } catch (SQLException e) {
            throw new ServletException("Erreur lors du traitement", e);
        }
    }

    private void handleRegistration(HttpServletRequest request, HttpServletResponse response, UserService userService) throws ServletException, IOException {
        String nom = request.getParameter("nom");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = new User();
        user.setNom(nom);
        user.setEmail(email);
        user.setPassword(password);

        try {
            int userId = userService.registerUser(user);

            if (userId != -1) {
                userService.registerClient(userId);

                // Crée une session pour l'utilisateur
                HttpSession session = request.getSession();
                session.setAttribute("nom", nom);
                session.setAttribute("email", email);

                // Redirige vers la page de succès
                request.getRequestDispatcher("/WEB-INF/views/clientAPP/success.jsp").forward(request, response);
            } else {
                // Gestion de l'erreur si l'inscription échoue
                request.setAttribute("errorMessage", "Erreur : cet email est déjà utilisé.");
                request.getRequestDispatcher("/WEB-INF/views/clientAPP/register.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            throw new ServletException("Erreur lors de l'inscription", e);
        }
    }

    private void handleLogin(HttpServletRequest request, HttpServletResponse response, UserService userService) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            User user = userService.authenticateUser(email, password);

            if (user != null) {
                boolean isAdmin = userService.isAdmin(user.getId());

                // Crée une session pour stocker les informations de l'utilisateur
                HttpSession session = request.getSession();
                session.setAttribute("userName", user.getNom());
                session.setAttribute("role", isAdmin ? "admin" : "client");

                if (isAdmin) {
                    // Redirige vers le tableau de bord admin
                    request.getRequestDispatcher("/WEB-INF/views/admin/dashboard.jsp").forward(request, response);
                } else {
                    // Redirige vers le tableau de bord client
                    request.getRequestDispatcher("/WEB-INF/views/clientAPP/index.jsp").forward(request, response);
                }
            } else {
                // Gestion de l'erreur si l'authentification échoue
                request.setAttribute("errorMessage", "Email ou mot de passe incorrect.");
                request.getRequestDispatcher("/WEB-INF/views/clientAPP/login.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            throw new ServletException("Erreur lors de la connexion", e);
        }
    }
}
