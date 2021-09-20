package com.codeup.adlister.controllers;


import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;


@WebServlet(name = "SearchServlet", value = "/ads/search")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //Implement functionality that allows users to search through the ads in your database.
        String itemSearch = request.getParameter("search");
        request.setAttribute("ads", DaoFactory.getAdsDao().searchAds(itemSearch));

        // Create error handling for search if user enters nothing

        request.getRequestDispatcher("/WEB-INF/ads/search.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String keyword = request.getParameter("keyword");

        if(keyword.isEmpty()) {
            response.sendRedirect("/ads");
            return;
        }

        List<Ad> ads = DaoFactory.getAdsDao().searchAds(keyword);
        request.setAttribute("ads", ads);
        request.getRequestDispatcher("/WEB-INF/ads/search.jsp").forward(request, response);
    }
}
