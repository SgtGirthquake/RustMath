//
//  ViewController.swift
//  RustMath
//
//  Created by Tyler Brenner on 6/24/17.
//  Copyright © 2017 Tritonal6. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var category = ""

    
    
    @IBAction func buttonA(_ sender: Any) {
        category = "buildItems"
        self.performSegue(withIdentifier: "segue", sender: self)
    }
        
        
    @IBAction func buttonB(_ sender: Any) {
        category = "buildBlocks"
        self.performSegue(withIdentifier: "segue", sender: self)
    }
      
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
        }
        
        
        override func didReceiveMemoryWarning() {
            
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?)
        {
            if segue.identifier == "segue" {
                let vc = segue.destination as! TableViewController
                //assuming that we created a variable called sentCategory in the TableViewController
                vc.sentCategory = category
                
            }
        }


}

