//
//  ViewController.swift
//  ChefBook
//
//  Created by md760 on 22.05.2020.
//  Copyright © 2020 md760. All rights reserved.
//curl "https://api.edamam.com/search?q=chicken&app_id=13fc7fb6&app_key=730d4277d339ac057776b27477e0324c&from=0&to=3&calories=591-722&health=alcohol-free"
//13fc7fb6
//730d4277d339ac057776b27477e0324c



import UIKit

final class RecipesViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: - Properties
    private let searchBar: UISearchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width - 20, height: 20))
    var recipesArray = [Recipe]()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}
//MARK: - Private Func
private extension RecipesViewController {
    
    //MARK: - SetupView
    func setupView() {
        navigationController?.navigationBar.barTintColor = UIColor.systemYellow.withAlphaComponent(0)
        self.collectionView.register(UINib(nibName: RecipeCell.identifier, bundle: nil), forCellWithReuseIdentifier: RecipeCell.identifier)
        searchBar.delegate = self
        searchBar.placeholder = "Search Recipe"
        let leftNavBarButton = UIBarButtonItem(customView: searchBar)
        navigationItem.leftBarButtonItem = leftNavBarButton
    }
}
