//
//  DetailRecipeViewController.swift
//  recipe
//
//  Created by Cambrian on 2023-07-12.
//

import UIKit

class DetailRecipeViewController: UIViewController {

    var recipeList: RecipeList!
    var indexPath: IndexPath!
    
    var recipe: Recipe!
    
    @IBOutlet weak var dificultyTextField: UITextField!
    @IBOutlet weak var durationTextField: UITextField!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var ingredienceTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard
            let index = indexPath?.row
        else { return }
        
        recipe = recipeList.list[index]
        
        dificultyTextField.text = recipe.difficulty
        durationTextField.text = recipe.duration
        titleTextField.text = recipe.title
        descriptionTextView.text = recipe.description
        ingredienceTextField.text = recipe.ingredientList
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if recipe == nil {
            recipe = Recipe()
            recipeList.list.append(recipe)
        }
        
        recipe.difficulty = dificultyTextField.text!
        recipe.duration = durationTextField.text!
        recipe.title = titleTextField.text!
        recipe.description = descriptionTextView.text!
        recipe.ingredientList = ingredienceTextField.text!
        
    }
   
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
