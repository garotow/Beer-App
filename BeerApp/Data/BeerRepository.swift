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
    
    func getBeerList() -> Single<[Beer]> {
        Single.just([Beer(), Beer(), Beer()])
    }
    
    func getBeerDetail(id: Int) -> Single<Beer> {
        Single.just(Beer())
    }
}
