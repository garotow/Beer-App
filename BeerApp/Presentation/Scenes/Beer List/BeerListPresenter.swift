//
//  BeerListPresenter.swift
//  BeerApp
//
//  Created by Henrique Lima on 17/11/19.
//  Copyright © 2019 Henrique Lima. All rights reserved.
//

import Foundation


protocol BeerListPresenterProtocol {
    func getBeers()
}

struct BeerListPresenter: BeerListPresenterProtocol {
    weak var view: BeerListViewProtocol?
    
    func getBeers() {
        let beers: [Beer] = [Beer(), Beer(), Beer()]
        view?.displayBeerList(beers: beers)
    }
}
