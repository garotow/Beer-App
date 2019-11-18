//
//  BeerListAdapter.swift
//  BeerApp
//
//  Created by Henrique Lima on 17/11/19.
//  Copyright © 2019 Henrique Lima. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class BeerListAdapter: NSObject, UITableViewDelegate, UITableViewDataSource {
    var tableView: UITableView
    var dataSource: [Beer] = []
    
    var onBeerSelected: Observable<Beer> { return tableView.rx.itemSelected.map { self.dataSource[$0.row] }}
    
    init(tableView: UITableView) {
        self.tableView = tableView
        super.init()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.registerCell(BeerTableViewCell.self)
    }
    
    func setData(_ beers: [Beer]) {
        dataSource = beers
        tableView.reloadData()
    }
    
    /// MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueCell(forIndexPath: indexPath) as BeerTableViewCell
        cell.configure(with: dataSource[indexPath.row])
        return cell
    }

    /// MARK: UITableViewDelegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 136
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
}
