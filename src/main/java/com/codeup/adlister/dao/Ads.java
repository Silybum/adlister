package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);


    void addCategory(Long ad_id, Long category_id);

    Ad findById(long id);
    Long findUserId(long id);

    // search for an ad
    List<Ad> searchAds(String keyword);

    List<Ad> getByUserId(long id);

    void update(Ad ad);

    void delete(long id);



    List<Ad> getAdsFromCategory(String category);
}

