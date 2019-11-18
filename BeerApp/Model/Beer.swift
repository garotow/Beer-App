//
//  Beer.swift
//  BeerApp
//
//  Created by Henrique Lima on 17/11/19.
//  Copyright © 2019 Henrique Lima. All rights reserved.
//

import Foundation

struct Beer: Codable {
    var id: Int
    var name: String
    var tagline: String
    var imageUrl: String
    var description: String
    var abv: Double
    //var ibu: Double  // TODO: Fix Bug cant parse int to double
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case tagline = "tagline"
        case imageUrl = "image_url"
        case description = "description"
        case abv = "abv"
       // case ibu = "ibu"
    }
}
