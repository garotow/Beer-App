//
//  Beer.swift
//  BeerApp
//
//  Created by Henrique Lima on 17/11/19.
//  Copyright © 2019 Henrique Lima. All rights reserved.
//

import Foundation


struct Beer {
    var id: Int
    var name: String
    var tagline: String
    var imageUrl: String
    var description: String
    var abv: Double
    var ibu: Double
    
    init(name: String = "Itaipava Premium",
         imageUrl: String = "www.google.com",
         abv: Double = 5.0,
         ibu: Double = 50.0,
         description: String = "Description...",
         tagline: String = "Very good!"
        ){
        self.id = 1
        self.name = name
        self.imageUrl = imageUrl
        self.abv = abv
        self.ibu = ibu
        self.description = description
        self.tagline = tagline
    }
    
}
