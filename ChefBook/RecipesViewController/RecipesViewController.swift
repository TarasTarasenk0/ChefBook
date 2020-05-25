//
//  ViewController.swift
//  ChefBook
//
//  Created by md760 on 22.05.2020.
//  Copyright © 2020 md760. All rights reserved.
//

import UIKit

final class RecipesViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: - Properties
    private let searchBar: UISearchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width - 20, height: 20))

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        navigationController?.navigationBar.barTintColor = UIColor.systemYellow.withAlphaComponent(0)

        
    }
    
    
}
//MARK: - Private Func
private extension RecipesViewController {
    
    //MARK: - SetupView
    func setupView() {
        self.collectionView.register(UINib(nibName: "RecipeCell", bundle: nil), forCellWithReuseIdentifier: "MainRecipeCellId")
        //items = realm.objects(RealmPhotoModel.self)
        
        searchBar.placeholder = "Search Recipe"
        let leftNavBarButton = UIBarButtonItem(customView: searchBar)
        self.navigationItem.leftBarButtonItem = leftNavBarButton
    }
}
