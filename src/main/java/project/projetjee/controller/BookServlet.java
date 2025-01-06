package project.projetjee.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import project.projetjee.dao.BookDAO;
import project.projetjee.model.Book;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "BookServlet", value = "/book")
@MultipartConfig // Enables file upload support
public class BookServlet extends HttpServlet {
    private BookDAO bookDAO;

    public void init() {
        bookDAO = new BookDAO();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        RequestDispatcher dispatcher;

        if ("add".equals(action)) {
            dispatcher = request.getRequestDispatcher("/WEB-INF/views/admin/addBook.jsp");
            dispatcher.forward(request, response);
        } else if ("list".equals(action)) {
            try {
                List<Book> books = bookDAO.getAllBooks();
                request.setAttribute("books", books);
                dispatcher = request.getRequestDispatcher("/WEB-INF/views/admin/BookList.jsp");
                dispatcher.forward(request, response);
            } catch (SQLException e) {
                e.printStackTrace();
                throw new ServletException("Error retrieving books", e);
            }
        } else if ("edit".equals(action)) {
            try {
                int id = Integer.parseInt(request.getParameter("id"));
                Book book = bookDAO.getBookById(id);
                request.setAttribute("book", book);
                dispatcher = request.getRequestDispatcher("/WEB-INF/views/admin/editBook.jsp");
                dispatcher.forward(request, response);
            } catch (SQLException e) {
                e.printStackTrace();
                throw new ServletException("Error retrieving book", e);
            }
        } else if ("delete".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            try {
                bookDAO.deleteBook(id);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            response.sendRedirect("book?action=list");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String idParam = request.getParameter("id");
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        String category = request.getParameter("category");
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        // File upload handling
        Part photoPart = request.getPart("photo");
        String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }

        String photoName = photoPart.getSubmittedFileName();
        String photoPath = "uploads" + File.separator + photoName;
        photoPart.write(uploadPath + File.separator + photoName);

        // Create Book object
        Book book = new Book();
        book.setTitle(title);
        book.setAuthor(author);
        book.setCategory(category);
        book.setQuantity(quantity);
        book.setPhoto(photoPath); // Set the photo path

        try {
            if (idParam != null && !idParam.isEmpty()) {
                int id = Integer.parseInt(idParam);
                book.setId(id);
                bookDAO.updateBook(book);
            } else {
                bookDAO.addBook(book);
            }

            response.sendRedirect("book?action=list");
        } catch (SQLException ex) {
            throw new ServletException("Error processing book", ex);
        }
    }

    public void destroy() {
    }
}
