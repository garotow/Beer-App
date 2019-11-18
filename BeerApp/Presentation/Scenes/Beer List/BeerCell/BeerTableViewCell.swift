//
//  BeerTableViewCell.swift
//  BeerApp
//
//  Created by Henrique Lima on 17/11/19.
//  Copyright © 2019 Henrique Lima. All rights reserved.
//

import UIKit
import Kingfisher

class BeerTableViewCell: UITableViewCell {

    @IBOutlet var productImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var abvLabel: UILabel!
    @IBOutlet var cardView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cardView.layer.cornerRadius = 5.0
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(false, animated: animated)
    }
    
    func configure(with beer: Beer) {
        nameLabel.text = beer.name
        abvLabel.text = "\(beer.abv)%"
        productImage.kf.setImage(with: URL(string: beer.imageUrl))
    }
}
