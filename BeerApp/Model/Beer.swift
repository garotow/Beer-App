//
//  Beer.swift
//  BeerApp
//
//  Created by Henrique Lima on 17/11/19.
//  Copyright © 2019 Henrique Lima. All rights reserved.
//

import Foundation


struct Beer {
    var name: String
    var imageUrl: String
    var abv: String
    
    init(name: String = "Itaipava Premium", imageUrl: String = "www.google.com", abv: String = "5/10"){
        self.name = name
        self.imageUrl = imageUrl
        self.abv = abv
    }
    
}
