//
//  ViewController.swift
//  RustMath
//
//  Created by Tyler Brenner on 6/24/17.
//  Copyright © 2017 Tritonal6. All rights reserved.
//

import UIKit
import ChameleonFramework

class ViewController: UIViewController {

    @IBOutlet weak var rustMathView: UIView!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    
    
    
    var category = ""

    
    
    
    @IBAction func buttonA(_ sender: Any) {
        category = "buildItems"
        self.performSegue(withIdentifier: "segue", sender: self)
    }
        
        
    @IBAction func buttonB(_ sender: Any) {
        category = "buildBlocks"
        self.performSegue(withIdentifier: "segue", sender: self)
    }
      
        
   
            
    
    override func viewDidAppear(_ animated: Bool) {
        
            let alertController = UIAlertController(title:"Pardon the Mess.",
                message: "This app is still being built from scratch. Things are broken, don't work, and are just plain ugly. I'm still learning and trying my best. Please have patience.",
                preferredStyle: UIAlertControllerStyle.alert); alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
                            present(alertController, animated: true,
                completion: nil)
    }
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            
            
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
