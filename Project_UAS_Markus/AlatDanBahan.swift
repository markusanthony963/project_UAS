//
//  AlatDanBahan.swift
//  Project_UAS_Markus
//
//  Created by iosdev on 5/6/17.
//  Copyright © 2017 UMN. All rights reserved.
//

import UIKit

var alatArr = ["a"]
var bahanArr = ["a"]

class AlatDanBahan: UIViewController {

    @IBOutlet var namaResep: UILabel!
    
    
    
    @IBOutlet var alatTF: UITextField!
    @IBOutlet var bahanTF: UITextField!
    @IBAction func alatBtn(_ sender: Any) {
        
        if (alatTF.text != "") {
            alatArr.append(alatTF.text!)
            alatTF.text = ""
        }
        
    }
    @IBAction func bahanBtn(_ sender: Any) {
                if (bahanTF.text != "") {
            bahanArr.append(bahanTF.text!)
            bahanTF.text = ""
        }
    
    }
    @IBAction func ConfBtn(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
