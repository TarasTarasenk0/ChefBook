//
//  RecipeCell.swift
//  ChefBook
//
//  Created by md760 on 25.05.2020.
//  Copyright © 2020 md760. All rights reserved.
//

import UIKit

class RecipeCell: UICollectionViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var recipeTitle: UILabel!
    @IBOutlet weak var blurredView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
       func setupView() {
        blurredView.addBlurEffect()
    //    let blurEffect = UIVisualEffectView(effect: UIBlurEffect(style: .light))
    //    blurEffect.frame = blurredView.frame
    //    blurredView.addSubview(blurEffect)
        }
    }
    
    extension UIView {
        func addBlurEffect()
        {
            let blurEffect = UIBlurEffect(style: .light)
            let blurEffectView = UIVisualEffectView(effect: blurEffect)
            blurEffectView.frame = self.bounds
    
            blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight] // for supporting device rotation
            self.addSubview(blurEffectView)
        }
    
}
