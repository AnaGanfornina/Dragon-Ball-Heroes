//
//  HeroTableViewCell.swift
//  Dragon_Ball_Heroes
//
//  Created by Ana on 16/9/24.
//

import UIKit

final class HeroTableViewCell: UITableViewCell {
    //MARK: -Identifier
    static let identifier = String(describing: HeroTableViewCell.self)
    
    //MARK: - Outlets
    @IBOutlet weak var heroImageView: UIImageView!
    @IBOutlet weak var heroLabel: UILabel!
    
    //MARK: - Configuration
    func configure(with hero: Hero){
        heroLabel.text = hero.rawValue
    }
}
