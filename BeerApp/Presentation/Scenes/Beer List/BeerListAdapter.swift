//
//  BeerListAdapter.swift
//  BeerApp
//
//  Created by Henrique Lima on 17/11/19.
//  Copyright © 2019 Henrique Lima. All rights reserved.
//

import UIKit


class BeerListAdapter: NSObject, UITableViewDelegate, UITableViewDataSource {
    var tableView: UITableView
    
    init(tableView: UITableView) {
        self.tableView = tableView
        super.init()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    /// MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
    
    
}
