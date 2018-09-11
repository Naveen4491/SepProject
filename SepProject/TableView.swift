//
//  ViewController.swift
//  SepProject
//
//  Created by Naveen Chowdary on 11/09/18.
//  Copyright © 2018 Naveen Chowdary. All rights reserved.
//

import UIKit

class TableView: UITableViewController {
    
    let fruits = ["hello","hi","mastert"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewCell", for: indexPath)as! TableViewCell
        
        
        cell.textLabel?.text = fruits[indexPath.row]
        
        
        return cell
        

        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
      
        let indexvalue = indexPath.row
        
        print(indexvalue)
        
        
        if  tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            
    tableView.cellForRow(at: indexPath)?.accessoryType = .none
        
        }else{
            
    
    tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
    
        }
}
}

