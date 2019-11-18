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
    let tableView: UITableView = UITableView()
    var presenter: BeerListPresenterProtocol!
    var adapter: BeerListAdapter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = BeerListPresenter(view: self, beerRepository: BeerRepository()) as BeerListPresenterProtocol
        adapter = BeerListAdapter(tableView: tableView)
        setupUI()
        setupObservables()
        presenter.getBeers()
    }
    
    func setupObservables() {
        adapter.onBeerSelected
            .do(onNext: { [unowned self] beer in
                self.navigateToDetails()
            })
            .subscribe()
            .disposed(by: disposeBag)
    }
    
    func setupUI() {
        tableView.allowsSelection = false
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
    
    func navigateToDetails() {
        self.navigationController?.pushViewController(BeerDetailViewController(), animated: true)
    }
}

extension BeerListViewController: BeerListViewProtocol {
    func displayBeerList(beers: [Beer]) {
        adapter.setData(beers)
    }
}

