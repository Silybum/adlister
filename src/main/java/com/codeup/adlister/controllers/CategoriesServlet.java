package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.Ads;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.CategoriesServlet", urlPatterns = "/ads/category")
public class CategoriesServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String category = request.getParameter("category");
        String searchCategory = getCategory(category);

        List<Ad> ads = DaoFactory.getAdsDao().getAdsFromCategory(searchCategory);

        request.setAttribute("ads", ads);
        request.getRequestDispatcher("/WEB-INF/ads/category.jsp").forward(request, response);
    }
    protected String getCategory(String category) {
        String actualCategory = "";
        if(category.equals("appliances")) {
            actualCategory = "clothing";
        }
        else if (category.equals("automotive")) {
            actualCategory = "automotive";
        }
        else if (category.equals("baby+kid")) {
            actualCategory = "baby+kid";
        }
        else if (category.equals("electronics")) {
            actualCategory = "electronics";
        }
        else if (category.equals("furniture")) {
            actualCategory = "furniture";
        }
        return actualCategory;
    }
}
