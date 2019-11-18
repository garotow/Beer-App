//
//  Extensions.swift
//  BeerApp
//
//  Created by Henrique Lima on 17/11/19.
//  Copyright © 2019 Henrique Lima. All rights reserved.
//

import UIKit


/// MARK: UIView
extension UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }

    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: Bundle(for: self))
    }
}

/// MARK: UITableView
extension UITableView {
    func registerCell<Cell: UITableViewCell> (_ cellClass: Cell.Type) {
        register(Cell.nib, forCellReuseIdentifier: Cell.reuseIdentifier)
    }
    
    func dequeueCell<Cell: UITableViewCell> (forIndexPath indexPath: IndexPath) -> Cell {
        guard let cell = self.dequeueReusableCell(withIdentifier: Cell.reuseIdentifier, for: indexPath) as? Cell else {
            fatalError("Could not load Cell")
        }
        return cell
    }
}

/// MARK: UIColor
extension UIColor {
    convenience init(hex: Int) {
        let components = (
            R: CGFloat((hex >> 16) & 0xff) / 255,
            G: CGFloat((hex >> 08) & 0xff) / 255,
            B: CGFloat((hex >> 00) & 0xff) / 255
        )
        self.init(red: components.R, green: components.G, blue: components.B, alpha: 1)
    }
}



