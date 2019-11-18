//
//  BeerListPresenter.swift
//  BeerApp
//
//  Created by Henrique Lima on 17/11/19.
//  Copyright © 2019 Henrique Lima. All rights reserved.
//

import Foundation
import RxSwift

protocol BeerListPresenterProtocol {
    func getBeers()
}

struct BeerListPresenter: BeerListPresenterProtocol {
    var disposeBag = DisposeBag()
    
    weak var view: BeerListViewProtocol?
    let beerRepository: BeerRepository
    
    func getBeers() {
        beerRepository.getBeerList()
            .do(onSuccess: { beerList in
                self.view?.displayBeerList(beers: beerList)
            })
            .subscribe()
            .disposed(by: disposeBag)
        
    }
}
