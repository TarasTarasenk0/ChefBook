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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    private func setupView() {
        blurredView.addBlurEffect()
        layer.cornerRadius = 25
    }
    
    func configure(_ model: Recipe?) {
        guard let data = model else { return }
        recipeTitle.text = data.label
        recipeImage.setImageFromStringUrl = data.image
        
    }
}

