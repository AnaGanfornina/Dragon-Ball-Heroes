//
//  HeroesListViewController.swift
//  Dragon_Ball_Heroes
//
//  Created by Ana on 16/9/24.
//

import UIKit

final class HeroListViewController: UITableViewController {
    //MARK: - Table View DataSource
    typealias DataSource = UITableViewDiffableDataSource< Int, Hero>
    typealias Snapshot = NSDiffableDataSourceSnapshot<Int,Hero>
    
    //MARK: - Model
    private let heroes:[Hero] = Hero.allCases
    private var dataSource: DataSource?
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
