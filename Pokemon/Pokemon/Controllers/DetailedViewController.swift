//
//  DetailedViewController.swift
//  Pokemon
//
//  Created by Melinda Diaz on 1/4/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {
    
    @IBOutlet weak var PokeImage: UIImageView!
    @IBOutlet weak var pokeName: UILabel!
    @IBOutlet weak var pokeType: UILabel!
    @IBOutlet weak var pokeWeakness: UILabel!
    @IBOutlet weak var pokeSet: UILabel!
    
    
    var pokemonCard: Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
