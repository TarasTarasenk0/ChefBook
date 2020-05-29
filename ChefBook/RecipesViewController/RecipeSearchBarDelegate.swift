//
//  RecipeSearchBarDelegate.swift
//  ChefBook
//
//  Created by md760 on 27.05.2020.
//  Copyright © 2020 md760. All rights reserved.
//

import UIKit

//MARK: - UISearchBarDelegate
extension RecipesViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let text = searchBar.text {
            searchBar.text = ""
            searchBar.resignFirstResponder()
            searchBar.setShowsCancelButton(false, animated: true)
            APIService.getRecipeBy(name: text) { [weak self] (model) in
                if let hits = model?.hits, hits.count != 0 {
                    guard let `self` = self else {return}
                    self.recipesArray = hits.map { $0.recipe }
                    DispatchQueue.main.async {
                        self.collectionView.reloadData()
                    }
                }
            }
        }
    }
}
