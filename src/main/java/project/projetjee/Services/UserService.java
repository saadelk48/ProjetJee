package project.projetjee.Services;

import project.projetjee.dao.UserDAO;

import project.projetjee.model.User;

import java.sql.Connection;
import java.sql.SQLException;

public class UserService {
    private UserDAO userDAO;

    // Constructeur pour injecter UserDAO
    public UserService(Connection connection) {
        this.userDAO = new UserDAO(connection);
    }

    // Méthode pour enregistrer un utilisateur
    public int registerUser(User user) throws SQLException {
        return userDAO.insertUser(user);
    }

    // Méthode pour enregistrer un client
    public void registerClient(int userId) throws SQLException {
        userDAO.insertClient(userId);
    }

    public User authenticateUser(String email, String password) throws SQLException {
        return userDAO.findUserByEmailAndPassword(email, password);
    }

    public boolean isAdmin(int userId) throws SQLException {
        return userDAO.isAdmin(userId);
    }
}


