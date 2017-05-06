//
//  FirstViewController.swift
//  Project_UAS_Markus
//
//  Created by iosdev on 5/6/17.
//  Copyright © 2017 UMN. All rights reserved.
//

import UIKit

var recipeArray:[Recipe] = []
var index = 0

class FirstViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

   @IBOutlet var tableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
    
        return(recipeArray.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style:UITableViewCellStyle.default, reuseIdentifier: "cell")
        
        let recipe = recipeArray[indexPath.row]
        
        cell.textLabel?.text = recipe.name
        
        return(cell)
    
    }
    

     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
     {
            performSegue(withIdentifier: "info", sender: self)
     }
    

    
     func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
     {
        if editingStyle == UITableViewCellEditingStyle.delete{
        recipeArray.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    
       override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
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

