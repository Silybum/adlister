package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (request.getSession().getAttribute("user") != null) {
            response.sendRedirect("/profile");

        }
        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String redirect = (String) request.getSession().getAttribute("redirect"); // this is null because it is not pulling from a session. Same as null.equals()


        User user = DaoFactory.getUsersDao().findByUsername(username);

        if (user == null) {
            response.sendRedirect("/login");
            return;
        }

        if (redirect == null) {
            redirect = " ";
        }


        boolean validAttempt = Password.check(password, user.getPassword());

        if (validAttempt) {
            request.getSession().setAttribute("user", user);
            if (redirect.equals("create")) {
                response.sendRedirect("/ads/create");
            } else {
                response.sendRedirect("/profile");
            }
            } else {
                response.sendRedirect("/login");
        }
    }
}





