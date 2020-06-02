//
//  RecipesViewControllerDelegate.swift
//  ChefBook
//
//  Created by md760 on 22.05.2020.
//  Copyright © 2020 md760. All rights reserved.
//

import UIKit

//MARK: - UICollectionViewDelegate
extension RecipesViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailRecipeVC = DetailRecipeViewController.instance(.detailRecipe)
        let currentRecipe = recipesArray[indexPath.row]
        detailRecipeVC.recipe = currentRecipe
        navigationController?.pushViewController(detailRecipeVC, animated: true)
        
    }
}

//MARK: - UICollectionViewDataSource
extension RecipesViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecipeCell.identifier, for: indexPath) as! RecipeCell
        cell.contentView.layer.cornerRadius = 25
        cell.contentView.layer.masksToBounds = true;
        cell.configure(recipesArray[indexPath.item])
        return cell
    }
}

//MARK: - UICollectionViewDelegateFlowLayout
extension RecipesViewController: UICollectionViewDelegateFlowLayout {
    final public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = collectionView.frame.height * 4/6
        let width = collectionView.frame.width
        return CGSize(width: width, height: height)
    }
}
