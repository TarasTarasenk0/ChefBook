//
//  DetailRecipeVCDelegate.swift
//  ChefBook
//
//  Created by md760 on 02.06.2020.
//  Copyright © 2020 md760. All rights reserved.
//

import UIKit

extension DetailRecipeViewController: UITableViewDelegate {
    
}

extension DetailRecipeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipe?.ingredients.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: IngredientCell.identifier, for: indexPath) as! IngredientCell
        let serialIngredient = recipe?.ingredients[indexPath.row]
        cell.ingredient?.text = serialIngredient?.text
        let numberText = String(format: "%.1f", serialIngredient?.weight ?? 0.0)
        cell.number?.text = numberText + "g"
        return cell
    }
    
    
}


