//
//  UpdateViewController.swift
//  Project_UAS_Markus
//
//  Created by iosdev on 5/13/17.
//  Copyright © 2017 UMN. All rights reserved.
//

import UIKit


class UpdateViewController: UIViewController {

    
    var counter = 0
    @IBOutlet var newNamaTF: UITextView!
    @IBOutlet var newToolsTF: UITextView!
    @IBOutlet var newIngredients: UITextView!
    @IBOutlet var newHTC: UITextView!


    @IBAction func backBtnUpdate(_ sender: Any) {
        //navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newNamaTF.text = recipeArray[counter].name
        newToolsTF.text = recipeArray[counter].tools
        newIngredients.text = recipeArray[counter].ingredients
        newHTC.text = recipeArray[counter].caraMasak
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
        
        
//        let newRecipe = Recipe(name: newNamaTF.text , tools: newToolsTF.text , ingredients: newIngredients.text ,caraMasak:newHTC.text ,counter:0 )
//        recipeArray.append(newRecipe)
        recipeArray[counter].name = newNamaTF.text
        recipeArray[counter].tools = newToolsTF.text
        recipeArray[counter].ingredients = newIngredients.text
        recipeArray[counter].caraMasak = newHTC.text

        
        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    }
    
}
