//
//  BeerListConfigurator.swift
//  BeerApp
//
//  Created by Henrique Lima on 18/11/19.
//  Copyright © 2019 Henrique Lima. All rights reserved.
//

import UIKit

final class BeerListConfigurator {
    static func getViewController() -> UIViewController {
        let beerListVC = BeerListViewController()
        beerListVC.presenter = BeerListPresenter(view: beerListVC, beerRepository: BeerRepository())
        return beerListVC
    }
}
