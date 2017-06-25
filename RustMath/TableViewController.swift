//
//  TableViewController.swift
//  RustMath
//
//  Created by Tyler Brenner on 6/24/17.
//  Copyright © 2017 Tritonal6. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var myIndex = 0
    
    var sentCategory = ""
    
    var buildItems = ["A Floor Grill",
                      "Armored Door",
                      "Armored Doubledoor",
                      "Wooden Barricade",
                      "Building Plan",
                      "Chainlink Fence Wall",
                      "Chainlink Fence Gate",
                      "Code Lock",
                      "Concrete Barricade",
                      "High External Stone Gate",
                      "High External Stone Wall",
                      "High External Wooden Gate",
                      "High External Wooden Wall",
                      "Ladder Hatch",
                      "Large Water Catcher",
                      "Key Lock",
                      "Metal Barricade",
                      "Metal Shop Front",
                      "Metal Vertical Embrasure",
                      "Metal Window Bars",
                      "Metal Horizontal Embrasure",
                      "Mining Quarry",
                      "Netting",
                      "Prison Cell Gate",
                      "Prison Cell Wall",
                      "Reinforced Window Bars",
                      "Sandbag Barricade",
                      "Sheetmetal Door",
                      "Sheetmetal Doubledoor",
                      "Wooden Shop Front",
                      "Small Water Catcher",
                      "Stone Barricade",
                      "Tool Cupboard",
                      "Wooden Double Door",
                      "Wooden Shutters",
                      "Wooden Door",
                      "Wooden Ladder",
                      "Wooden Window Bars"
    ]
    
    
    
    var  constructionItems = ["Foundation",
                              "Triangle Foundation",
                              "Foundation Steps",
                              "Floor",
                              "Triangle Floor",
                              "Wall",
                              "Doorway",
                              "Window",
                              "Low Wall",
                              "Wall Frame",
                              "Floor Frame",
                              "Stairs L Shaped",
                              "Stairs U Shaped",
                              "Pillar",
                              "Roof"
    ]
    
    var data = [String]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if sentCategory == "buildItems"
        {
            data = buildItems
        }
        else {  data = constructionItems
        }
            
        
    
    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return data.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        //This changes the cell's text depending on the pet we choose, using indexPath.
        cell.textLabel?.text = data[indexPath.row]
        
        
        return cell
    }
    
    
    //MARK: User chosen cell - establish myIndex to ensure user chooses what's used.
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
 
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            let svc = segue.destination as! DetailsViewController
            
            let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow! as NSIndexPath
            
            svc.passedData = data[indexPath.row]    }
    
   /* override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "segue" {
            let svc = segue.destination as! DetailsViewController
            
            let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow! as NSIndexPath
            
            svc.passedData = data[indexPath.row]
        }
        }*/
        }


}



