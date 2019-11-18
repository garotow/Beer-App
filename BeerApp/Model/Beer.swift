//
//  Beer.swift
//  BeerApp
//
//  Created by Henrique Lima on 17/11/19.
//  Copyright © 2019 Henrique Lima. All rights reserved.
//

import Foundation

struct Beer: Codable {
    let id: Int
    let name: String
    let tagline: String
    let imageUrl: String
    let description: String
    let abv: Double
    let ibu: Double? // Quick fix for the bug where Moya can't parse this value in some cases.
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case tagline = "tagline"
        case imageUrl = "image_url"
        case description = "description"
        case abv = "abv"
        case ibu = "ibu"
    }
}
