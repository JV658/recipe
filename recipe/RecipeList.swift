//
//  RecipeList.swift
//  recipe
//
//  Created by Cambrian on 2023-07-12.
//

import Foundation

class RecipeList {
    var list = [Recipe]()
    
    func addRecipe(_ recipe: Recipe){
        list.append(recipe)
    }
}
