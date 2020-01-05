//
//  TableViewCell.swift
//  Pokemon
//
//  Created by Melinda Diaz on 1/4/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

   
    @IBOutlet weak var pokeNameLabel: UILabel!
    @IBOutlet weak var pokeInfo: UILabel!
    @IBOutlet weak var pokeImage: UIImageView!
    
    
    func setUpCell(eachCell: Cards) {
        pokeNameLabel.text = eachCell.name
        pokeInfo.text = eachCell.nationalPokedexNumber.description
        pokeImage.getImages(image: <#T##String#>, completion: <#T##(Result<UIImage, AppError>) -> ()#>)
return
    }
}
