//
//  BeerDetailPresenter.swift
//  BeerApp
//
//  Created by Henrique Lima on 18/11/19.
//  Copyright © 2019 Henrique Lima. All rights reserved.
//

import Foundation

protocol BeerDetailPresenterProtocol {
    func getBeerDetail(id: Int)
}

struct BeerDetailPresenter: BeerDetailPresenterProtocol {
    weak var view: BeerDetailViewProtocol?
    let beerRepository: BeerRepository
    
    func getBeerDetail(id: Int) {
        view?.displayBeer(beer: Beer())
    }
}
