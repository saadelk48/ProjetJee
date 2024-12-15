package project.projetjee.controller;

import java.io.*;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import project.projetjee.dao.BookDAO;
import project.projetjee.model.Book;
import java.util.List;
@WebServlet(name = "BookServlet", value = "/book")
public class BookServlet extends HttpServlet {
    private BookDAO bookDAO;

    public void init() {
        bookDAO = new BookDAO();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {

        String action = request.getParameter("action");
        RequestDispatcher dispatcher;

        if ("add".equals(action)) {
            // Forward to addBook.jsp when "Add" action is triggered
            dispatcher = request.getRequestDispatcher("/WEB-INF/views/admin/addBook.jsp");
            dispatcher.forward(request, response);
        } else if ("list".equals(action)) {
            // Default action: Display Book List
            try {
                List<Book> books = bookDAO.getAllBooks();
                System.out.println("Books retrieved in Servlet: " + books.size());
                request.setAttribute("books", books);
                System.out.println("Attribute 'books' set in request.");
                dispatcher = request.getRequestDispatcher("/WEB-INF/views/admin/BookList.jsp");
                dispatcher.forward(request, response);
            }catch (SQLException e) {
                e.printStackTrace();
                throw new ServletException("Error retrieving books", e);
            }
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        String category = request.getParameter("category");
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        Book book = new Book();
        book.setTitle(title);
        book.setAuthor(author);
        book.setCategory(category);
        book.setQuantity(quantity);

        try {
            bookDAO.addBook(book);
            response.sendRedirect("book?action=list");
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    public void destroy() {
    }
}