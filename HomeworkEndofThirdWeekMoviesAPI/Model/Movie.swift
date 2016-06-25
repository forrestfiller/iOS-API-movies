//
//  Movie.swift
//  HomeworkEndofThirdWeekMoviesAPI
//
//  Created by Forrest Filler on 6/25/16.
//  Copyright © 2016 ffdevappsff. All rights reserved.
//

import UIKit

class Movie: NSObject {
    
    var id: String! //id number from the json
    var title: String! //title of movie
    var image: String? //movie image  not sure what is going to happen here, as I don't have any images
    var vote_average: String! //average of user votes
    var overview: String!
    
    
    func populate(movieInfo: Dictionary<String, AnyObject>){
        
        self.id = movieInfo["id"] as? String
        self.title = movieInfo["title"] as? String
        self.vote_average = movieInfo["vote_average"] as? String
        self.overview = movieInfo["overview"] as? String
        
        if let _imageDoesExist = movieInfo["imagesDoesExist"] as? String {
            self.image = _imageDoesExist
            // hopefully this will handle any issues with images existing or not
        }
    }
}
