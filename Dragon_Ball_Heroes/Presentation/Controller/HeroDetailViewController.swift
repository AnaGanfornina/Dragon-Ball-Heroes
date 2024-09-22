//
//  HeroDetailViewController.swift
//  Dragon_Ball_Heroes
//
//  Created by Ana on 20/9/24.
//

import UIKit

final class HeroDetailViewController: UIViewController {
    
    @IBOutlet weak var heroImageView: UIImageView!
    @IBOutlet weak var heroNameLabel: UILabel!
    
    private let hero: Hero
    
    init(hero: Hero) {
        self.hero = hero
        super.init(nibName: nil, bundle: nil)
        
    }
    
    @available(*,unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
}

//MARK: - View Configuration
    private extension HeroDetailViewController{
        func configureView(){
            heroNameLabel.text = hero.rawValue
            
            guard let imageURL = hero.imageURL else{
                return
            }
            
            heroImageView.setImage(url: imageURL)
        }
    }
