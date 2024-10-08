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
        
        tableView.register(
            UINib(nibName: HeroTableViewCell.identifier, bundle: nil),
            forCellReuseIdentifier: HeroTableViewCell.identifier)
        
        dataSource = DataSource(tableView: tableView) {tableView, indexPath, hero in
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: HeroTableViewCell.identifier,
                for: indexPath
            )as? HeroTableViewCell else {
                return UITableViewCell()
            }
        
            cell.configure(with: hero)
            return cell
        }
        tableView.dataSource = dataSource
        
        var  snapshot = Snapshot()
        snapshot.appendSections([0])
        snapshot.appendItems (heroes)
        dataSource?.apply(snapshot)
        
    }
    
    
        
    }
// MARK: -Table View Delegate

extension HeroListViewController{
    override func tableView(
        _ tableView: UITableView,
        heightForRowAt indexPath: IndexPath
    ) -> CGFloat {
        100
            
    }
    override func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    ) {
        let hero = heroes[indexPath.row]
        let detailViewController = HeroDetailViewController(hero: hero)
        
        navigationController?.show(detailViewController, sender: self)
    }
    
    
}
    
