//
//  Restaurant Model.swift
//  Hashtag Search Again
//
//  Created by Eva Marie Bresciano on 6/21/16.
//  Copyright © 2016 Eva Bresciano. All rights reserved.
//

import Foundation


class Restaurant: SearchableObject {
    
    let name: String
    let streetAddress: String
    let city: String
    let state: String
    var reviews: [Review] = []
    
    
    var hashtags: [String] {
        var hashtagsArray: [String] = []
        for i in reviews {
            for hashtag in i.hashtags{
                hashtagsArray.append(hashtag)
            }
        }
        
        return hashtagsArray
    }

    init(name: String, streetAddress: String, city: String, state: String, reviews: [Review] = []) {
        
        self.name = name
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.reviews = reviews
        
    }
    
    func matchesSearchTerm(searchterm: String) {
        
    }
}

var restaurants = ["Luca's", "Il Cortile", "Javier's","La Palmera", "Roger's", "Kelly and Ping's", "Waggamama's", "La Valle", "Yamato's"]

var restaurant1 = Restaurant(name: "Il Cortile", streetAddress: "125 Mulberry St", city: ", New York City", state: "New York")

var review1 = Review(username: "TheGodfather1972", text: "try the veal, it's the best in the city. #badabing #noDispiace #sleepWithTheFishes")


protocol SearchableObject {
    func matchesSearchTerm(searchterm: String)
    
    
}