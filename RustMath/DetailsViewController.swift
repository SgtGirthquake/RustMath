//
//  DetailsViewController.swift
//  RustMath
//
//  Created by Tyler Brenner on 6/24/17.
//  Copyright © 2017 Tritonal6. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var itemLabel: UILabel!
    
  var passedData = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
        
        
    
    
        itemLabel.text = passedData
        myImageView.image = UIImage(named: passedData + ".png")
        
        
    
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
