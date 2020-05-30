//
//  RecipeCell.swift
//  ChefBook
//
//  Created by md760 on 25.05.2020.
//  Copyright © 2020 md760. All rights reserved.
//

import UIKit
import SDWebImage

class RecipeCell: UICollectionViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var recipeImage: CustomUIImage!
    @IBOutlet weak var recipeTitle: UILabel!
    @IBOutlet weak var blurredView: UIView!
    @IBOutlet weak var saveButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    private func setupView() {
        blurredView.addBlurEffect()
        
        recipeTitle.font = UIFont.boldSystemFont(ofSize: 24.0)
        recipeTitle.textColor = .white
        recipeTitle.numberOfLines = 2
        
        saveButton.layer.borderWidth = 3
        saveButton.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        saveButton.layer.cornerRadius = 10
        saveButton.setTitle(" ❤️  21 ", for: .normal)
    }
    
    func configure(_ model: Recipe?) {
        guard let data = model else { return }
        recipeTitle.text = data.label
        recipeImage.setImageFromStringUrl = data.image
        
    }
}

