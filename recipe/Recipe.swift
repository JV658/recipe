//
//  Recipe.swift
//  recipe
//
//  Created by Cambrian on 2023-07-12.
//

import Foundation

class Recipe {
    var title: String
    var difficulty: String
    var duration: String
    var description: String
    var ingredientList: String
    
    init(title: String, difficulty: String, duration: String, description: String, ingredientList: String) {
        self.title = title
        self.difficulty = difficulty
        self.duration = duration
        self.description = description
        self.ingredientList = ingredientList
    }
    
    init(){
        title = ""
        difficulty = ""
        duration = ""
        description = ""
        ingredientList = ""
    }
}
