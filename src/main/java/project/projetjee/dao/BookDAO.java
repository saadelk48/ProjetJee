package project.projetjee.dao;

import project.projetjee.model.Book;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookDAO {

    private static final String URL = "jdbc:mysql://localhost:3306/library_management?useSSL=false&allowPublicKeyRetrieval=true";
    private static final String USER = "root";
    private static final String PASSWORD = "admin";

    // Method to get a database connection
    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Explicitly load the driver
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Failed to load MySQL JDBC driver", e);
        }
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }

    // Method to add a book
    public void addBook(Book book) throws SQLException {
        String sql = "INSERT INTO livre (titre, auteur, categorie, nbr_disponible) VALUES (?, ?, ?, ?)";

        // Use the reusable getConnection() method
        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, book.getTitle());
            stmt.setString(2, book.getAuthor());
            stmt.setString(3, book.getCategory());
            stmt.setInt(4, book.getQuantity());

            stmt.executeUpdate();
        }
    }

    public List<Book> getAllBooks() throws SQLException {
        String sql = "SELECT * FROM livre";
        List<Book> books = new ArrayList<>();

        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Book book = new Book();
                book.setId(rs.getInt("id"));
                book.setTitle(rs.getString("titre"));
                book.setAuthor(rs.getString("auteur"));
                book.setCategory(rs.getString("categorie"));
                book.setQuantity(rs.getInt("nbr_disponible"));
                books.add(book);
            }
        }
        return books;
    }
}
