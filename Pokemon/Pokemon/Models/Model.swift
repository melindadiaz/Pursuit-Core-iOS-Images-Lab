//
//  Model.swift
//  Pokemon
//
//  Created by Melinda Diaz on 1/4/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//

import Foundation

struct Pokemon: Codable {
    let cards: [Cards]
}

struct Cards: Codable {
    let id: String
    let name: String
    let nationalPokedexNumber: String
    let types: String
    let set: String
    let weakness: [Weakness]
}

struct Weakness: Codable {
    let type: String
    let value: String
}
