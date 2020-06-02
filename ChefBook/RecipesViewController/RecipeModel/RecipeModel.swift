//
//  RecipeModel.swift
//  ChefBook
//
//  Created by md760 on 26.05.2020.
//  Copyright © 2020 md760. All rights reserved.
//"https://api.edamam.com/search?q=chicken&app_id=13fc7fb6&app_key=730d4277d339ac057776b27477e0324c&from=0&to=3&calories=591-722&health=alcohol-free"


import Foundation

struct SearchedRecipe: Decodable {
    let hits: [Hits]
}

struct Hits: Decodable {
    let recipe: Recipe
}

struct Recipe: Decodable {
    let label: String
    let image: String
    let url: String
    let ingredients: [Ingredient]
}

struct Ingredient: Decodable {
    let text: String
    let weight: Double
}
