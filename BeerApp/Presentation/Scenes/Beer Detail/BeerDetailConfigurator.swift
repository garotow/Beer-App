//
//  BeerDetailConfigurator.swift
//  BeerApp
//
//  Created by Henrique Lima on 18/11/19.
//  Copyright © 2019 Henrique Lima. All rights reserved.
//

import UIKit

final class BeerDetailConfigurator {
    static func getViewController(with beer: Beer) -> UIViewController {
        let vc = BeerDetailViewController()
        vc.currentBeer = beer
        return vc
    }
}
