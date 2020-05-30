//
//  APIService.swift
//  ChefBook
//
//  Created by md760 on 26.05.2020.
//  Copyright © 2020 md760. All rights reserved.
//curl "https://api.edamam.com/search?q=chicken&app_id=13fc7fb6&app_key=730d4277d339ac057776b27477e0324c&from=0&to=3&calories=591-722&health=alcohol-free"
//13fc7fb6 - app id
//730d4277d339ac057776b27477e0324c - app key

import Foundation

enum APIService {
    static func getRecipeBy(name: String, completion: @escaping ((_ model: SearchedRecipe?) -> Void)) {
        //P.S нужно поработать над фильтрами
        let link = "https://api.edamam.com/search?q=\(name)&app_id=13fc7fb6&app_key=730d4277d339ac057776b27477e0324c&from=0&to=3&calories=591-722&health=alcohol-free"
        guard let url = URL(string: link) else { return }
        URLSession.shared.dataTask(with: URLRequest(url: url), completionHandler: { data, response, error in
            guard error == nil, let data = data else {
                completion(nil)
                return
            }
            let model = try? JSONDecoder().decode(SearchedRecipe.self, from: data)
            completion(model)
        }).resume()
    }
}
