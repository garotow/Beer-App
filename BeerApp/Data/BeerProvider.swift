//
//  BeerProvider.swift
//  BeerApp
//
//  Created by Henrique Lima on 18/11/19.
//  Copyright © 2019 Henrique Lima. All rights reserved.
//

import Moya
import Alamofire
import Foundation

enum BeerProvider {
    case getBeerList
}

extension BeerProvider: TargetType {
    var baseURL: URL {
        return URL(string: "https://api.punkapi.com/v2/beers")!
    }
    
    var path: String {
        return ""
    }
    
    var method: Moya.Method {
        return .get
    }

    var task: Task {
      return .requestPlain
    }
    
    var sampleData: Data { return Data() }
    
    var headers: [String : String]? {
        return nil
    }
}




