//
//  InfoRecipeViewController.swift
//  Project_UAS_Markus
//
//  Created by iosdev on 5/6/17.
//  Copyright © 2017 UMN. All rights reserved.
//

import UIKit

class InfoRecipeViewController: UIViewController {

    var counter = 0
    @IBOutlet var namaRcp: UILabel!
    @IBOutlet var alatRcp: UILabel!
    @IBOutlet var bahanRcp: UILabel!
    @IBOutlet var caraMasakRcp: UILabel!
    
    
    @IBAction func backBtn(_ sender: Any) {
        //navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }

    
    
    @IBAction func editRecipe(_ sender: Any) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateRecipe()
        // Do any additional setup after loading the view.
    }

    func updateRecipe () {
        namaRcp.text = recipeArray[counter].name
        alatRcp.text = recipeArray[counter].tools
        bahanRcp.text = recipeArray[counter].ingredients
        caraMasakRcp.text = recipeArray[counter].caraMasak
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let edit = segue.destination as! UpdateViewController
        edit.counter = counter
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
       */

}
