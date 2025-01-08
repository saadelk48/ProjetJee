package project.projetjee.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import project.projetjee.dao.BookDAO;
import project.projetjee.dao.DataBaseConnection;
import project.projetjee.model.Book;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/clientApp")
public class ClientAppServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false); // Do not create a new session

        if (session != null) {
            System.out.println("Session attributes:");
            session.getAttributeNames().asIterator().forEachRemaining(attr -> {
                System.out.println(attr + ": " + session.getAttribute(attr));
            });
        }

        String page = request.getParameter("page");
        if (page == null) {
            page = "index";
        }

        String pagePath = "/WEB-INF/views/clientAPP/" + page + ".jsp";

        if ("login".equals(page)) {
            request.getRequestDispatcher("/WEB-INF/views/clientAPP/login.jsp").forward(request, response);
            return;
        }

        if ("index".equals(page)) {
            if (session != null) {
                String role = (String) session.getAttribute("role");
                if ("client".equals(role)) {
                    try (Connection connection = DataBaseConnection.getConnection()) {
                        BookDAO bookDAO = new BookDAO();
                        List<Book> books = bookDAO.getAllBooks();

                        if (books == null || books.isEmpty()) {
                            System.out.println("No books found in the database.");
                        } else {
                            System.out.println("Books retrieved: " + books.size());
                        }
                        request.setAttribute("books", books);
                    } catch (SQLException e) {
                        e.printStackTrace();
                        response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error: Unable to retrieve books.");
                        return;
                    }
                } else {
                    System.out.println("Invalid role or no role found. Redirecting to login.");
                    request.getRequestDispatcher("/WEB-INF/views/clientAPP/login.jsp").forward(request, response);
                    return;
                }
            } else {
                System.out.println("No session found. Redirecting to login.");
                request.getRequestDispatcher("/WEB-INF/views/clientAPP/login.jsp").forward(request, response);
                return;
            }
        } else {
            System.out.println("Invalid page requested: " + page);
            request.getRequestDispatcher("/WEB-INF/views/clientAPP/404.jsp").forward(request, response);
            return;
        }

        request.getRequestDispatcher(pagePath).forward(request, response);
    }
}
