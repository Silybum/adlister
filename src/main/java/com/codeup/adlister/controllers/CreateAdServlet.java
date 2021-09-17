package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (request.getSession().getAttribute("user") == null) {
            request.getSession().setAttribute("redirect", "create");

            response.sendRedirect("/login");
            return;
        }
        request.getSession().getAttribute("titleError");
        request.getSession().getAttribute("hasTitleError");


        request.getRequestDispatcher("/WEB-INF/ads/create.jsp")
            .forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        User user = (User) request.getSession().getAttribute("user");
        String title = request.getParameter("title");
        String description = request.getParameter("description");
//        String redirectErrorUrl = "/ads/create?";

        if(title == null || title.equals("")){
            request.setAttribute("titleError", "Ad MUST have a Title & Description!");
            request.setAttribute("hasTitleError", true);
//            response.sendRedirect("/ads/create");
//            redirectErrorUrl = redirectErrorUrl + "titleError=NoTitle&";
            request.getRequestDispatcher("/WEB-INF/ads/create.jsp")
                    .forward(request, response);

//            if(description == null || description.equals("")){
//                request.setAttribute("descriptionError", "Please include a description");
//                request.setAttribute("hasDescriptionError", true);
////            response.sendRedirect("/ads/create");
////            redirectErrorUrl = redirectErrorUrl + "titleError=NoTitle&";
//                request.getRequestDispatcher("/WEB-INF/ads/create.jsp")
//                        .forward(request, response);
//                return;
//            }
//            return;
        }


        Ad ad = new Ad(
            user.getId(),// next line 1,
            title,
            description
        );

        DaoFactory.getAdsDao().insert(ad);
        response.sendRedirect("/ads");
    }
}
