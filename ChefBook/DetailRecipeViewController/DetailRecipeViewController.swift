//
//  DetailRecipeViewController.swift
//  ChefBook
//
//  Created by md760 on 01.06.2020.
//  Copyright © 2020 md760. All rights reserved.
//

import UIKit

final class DetailRecipeViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet  weak var recipeImage: CustomUIImage!
    @IBOutlet  weak var recipeTitle: UILabel!
    @IBOutlet  weak var ingredientsTableView: UITableView!
    @IBOutlet  weak var cookingButton: UIButton!
    @IBOutlet  weak var containerView: UIView!
    
    //MARK: - Properties
    var recipe: Recipe?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupModel()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Make the navigation bar background clear
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
    }
    @IBAction func startCooking(_ sender: Any) {
        guard let urlString = recipe?.url else { return }
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
        }
    }
}

private extension DetailRecipeViewController {
    func setupModel() {
        recipeTitle.text = recipe?.label
        recipeImage.setImageFromStringUrl = recipe?.image
        
        containerView.layer.cornerRadius = 25
        containerView.layer.masksToBounds = true
    }
}
