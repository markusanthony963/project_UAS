//
//  SecondViewController.swift
//  Project_UAS_Markus
//
//  Created by iosdev on 5/6/17.
//  Copyright © 2017 UMN. All rights reserved.
//

import UIKit



class SecondViewController: UIViewController {

   
    @IBOutlet var namaTF: UITextView!
    @IBOutlet var alatTF: UITextView!
    @IBOutlet var bahanTF: UITextView!
    @IBOutlet var caraMasakTF: UITextView!
    
    @IBAction func addNewButton(_ sender: Any) {
        
        //let recipeName = namaTF.text
        //let recipeIngredients = alatTF.text
        //let recipeTools = bahanTF.text
        
        let aRecipe = Recipe(name: namaTF.text, tools: alatTF.text, ingredients: bahanTF.text, caraMasak: caraMasakTF.text,counter:0)
        recipeArray.append(aRecipe)
        namaTF.text = ""
        alatTF.text = ""
        bahanTF.text = ""
        caraMasakTF.text = ""
        
//        if(newRecipeeTextField.text != ""){
//            AlatArr.append(alatTF.text!)
//            alatTF.text = ""
//            BahanArr.append(bahanTF.text!)
//            bahanTF.text = ""
//        recipeeArr.append([[[newRecipeeTextField.text!]]])
//        newRecipeeTextField.text = ""
//        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

