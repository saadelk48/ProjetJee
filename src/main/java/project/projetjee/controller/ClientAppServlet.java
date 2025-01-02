package project.projetjee.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/clientApp")
public class ClientAppServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String page = request.getParameter("page");
        if (page == null) {
            page = "index";
        }

        String pagePath = "/WEB-INF/views/clientAPP/" + page + ".jsp";

        if (page.equals("login") || page.equals("dashboard") || page.equals("index")) {
            request.getRequestDispatcher(pagePath).forward(request, response);
        } else {
            request.getRequestDispatcher("/WEB-INF/views/clientAPP/error.jsp").forward(request, response);
        }
    }
}
