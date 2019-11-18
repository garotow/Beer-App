//
//  BeerListViewController.swift
//  BeerApp
//
//  Created by Henrique Lima on 17/11/19.
//  Copyright © 2019 Henrique Lima. All rights reserved.
//

import UIKit
import RxSwift

protocol BeerListViewProtocol: class {
    func displayBeerList(beers: [Beer])
}

class BeerListViewController: UIViewController {
    var disposeBag = DisposeBag()
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        table.indicatorStyle = .default
        return table
    }()
    
    lazy var adapter: BeerListAdapter = { BeerListAdapter(tableView: tableView) }()
    
    // Injected
    var presenter: BeerListPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupObservables()
        presenter.getBeers()
    }
    
    private func setupUI() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        // Add full screen constraints
        view.addConstraints([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    private func setupObservables() {
        adapter.onBeerSelected
            .do(onNext: { [unowned self] beer in
                self.navigateToDetails(selectedBeer: beer)
            })
            .subscribe()
            .disposed(by: disposeBag)
    }

    private func navigateToDetails(selectedBeer beer: Beer) {
        let beerDetailVC = BeerDetailConfigurator.getViewController(with: beer)
        self.navigationController?.pushViewController(beerDetailVC, animated: true)
    }
}

extension BeerListViewController: BeerListViewProtocol {
    func displayBeerList(beers: [Beer]) {
        adapter.setData(beers)
    }
}
