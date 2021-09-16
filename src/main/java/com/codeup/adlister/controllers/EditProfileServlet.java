package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.EditProfileServlet", urlPatterns = "/editProfile")
public class EditProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/WEB-INF/editProfile.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");


        // Validate input, put this into a class
        boolean inputHasErrors = username.isEmpty()
        || email.isEmpty()
        || password.isEmpty()
        || (! password.equals(passwordConfirmation));

        if (inputHasErrors) {
            response.sendRedirect("/editProfile");
            return;
        }

        User user = (User) request.getSession().getAttribute("user");
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(password);
        user.setPassword(passwordConfirmation);

        DaoFactory.getUsersDao().editUser(user);
        response.sendRedirect("/login");
    }
}
