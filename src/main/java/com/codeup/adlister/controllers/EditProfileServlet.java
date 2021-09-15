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
//
//            // create and save a new user
//            User user = new User(username, email, password);
//            DaoFactory.getUsersDao().insert(user);
//            response.sendRedirect("/login");
//        }
//    }
    }
}
