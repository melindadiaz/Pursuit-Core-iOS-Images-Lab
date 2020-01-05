//
//  ViewController.swift
//  Pokemon
//
//  Created by Melinda Diaz on 12/16/19.
//  Copyright © 2019 Melinda Diaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //TODO: Fix searchbar, find image link and transfer Data
    @IBOutlet weak var pokeSearch: UISearchBar!
    @IBOutlet weak var pokeTableView: UITableView!
    
    var pokemonCards = [Pokemon]()
    
    var userQuery = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pokeTableView.dataSource = self
        pokeSearch.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = pokeTableView.indexPathForSelectedRow,
            let detailedVC = segue.destination as? DetailedViewController else {
                fatalError("Could not Segue")}
        let eachCell = pokemonCards[indexPath.row]
        detailedVC.pokemonCard = eachCell
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemonCards.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell", for: indexPath) as? TableViewCell else {
            fatalError("Could not load cell")}
            //setupCell function needed
         return cell
    }
    
    
    
    
}

extension ViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        userQuery = searchText
    }
    
    
}
