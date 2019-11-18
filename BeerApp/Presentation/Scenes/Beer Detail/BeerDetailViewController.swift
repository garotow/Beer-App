//
//  BeerDetailViewController.swift
//  BeerApp
//
//  Created by Henrique Lima on 17/11/19.
//  Copyright © 2019 Henrique Lima. All rights reserved.
//

import UIKit
import Kingfisher

class BeerDetailViewController: UIViewController {
    // Injected
    var currentBeer: Beer!
    
    @IBOutlet var beerImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var taglineLabel: UILabel!
    @IBOutlet var abvLabel: UILabel!
    @IBOutlet var ibuLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        title = currentBeer.name
        nameLabel.text = currentBeer.name
        taglineLabel.text = currentBeer.tagline
        abvLabel.text = "\(currentBeer.abv)"
        ibuLabel.text = "3"
        descriptionLabel.text = currentBeer.description
        beerImage.kf.setImage(with: URL(string: currentBeer.imageUrl))
    }
}




