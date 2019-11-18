//
//  BeerDetailViewController.swift
//  BeerApp
//
//  Created by Henrique Lima on 17/11/19.
//  Copyright © 2019 Henrique Lima. All rights reserved.
//

import UIKit


protocol BeerDetailViewProtocol: class {
    func displayBeer(beer: Beer)
}

class BeerDetailViewController: UIViewController {
    var presenter: BeerDetailPresenterProtocol!
    
    @IBOutlet var beerImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var taglineLabel: UILabel!
    @IBOutlet var abvLabel: UILabel!
    @IBOutlet var ibuLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayBeer(beer: Beer())
    }

}

extension BeerDetailViewController: BeerDetailViewProtocol {
    func displayBeer(beer: Beer) {
        title = beer.name
        nameLabel.text = beer.name
        taglineLabel.text = beer.tagline
        abvLabel.text = "\(beer.abv)"
        ibuLabel.text = "\(beer.ibu)"
        descriptionLabel.text = beer.description
    }
}
