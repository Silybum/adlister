package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.sql.SQLException;
import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    Ad findById(long id);
    Long findUserId(long id);

    // search for an ad
    List<Ad> searchAds(String keyword);

    List<Ad> getByUserId(long id);

    void update(Ad ad);



}
