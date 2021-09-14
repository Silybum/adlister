package com.codeup.adlister.controllers;


import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


@WebServlet(name = "SearchServlet", value = "/ads/search")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//Implement functionality that allows users to search through the ads in your database.
        String itemSearch = request.getParameter("search");
        request.setAttribute("ads", DaoFactory.getAdsDao().searchAds(itemSearch));
        request.getRequestDispatcher("/WEB-INF/ads/search.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
