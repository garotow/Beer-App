//
//  BeerRepository.swift
//  BeerApp
//
//  Created by Henrique Lima on 18/11/19.
//  Copyright © 2019 Henrique Lima. All rights reserved.
//

import Moya
import RxMoya
import RxSwift

class BeerRepository {
    let provider =  MoyaProvider<BeerProvider>()
    
    func getBeerList() -> Single<[Beer]> {
        return provider.rx.request(.getBeerList).map([Beer].self)
    }
}
