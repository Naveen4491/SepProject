//
//  ViewController.swift
//  SepProject
//
//  Created by Naveen Chowdary on 11/09/18.
//  Copyright © 2018 Naveen Chowdary. All rights reserved.
//

import UIKit

class TableView: UITableViewController {
    
   
    var fruits = ["hello","hi","mastert"]
    
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let item = defaults.array(forKey: "ToDolistarray") as? [String] {
            
            fruits = item
            
            
        }
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
    
    
    // Adding New Item Using Bar Button
    
    
    @IBAction func AddingItems(_ sender: Any) {
        
        var textfield = UITextField()
        
        
        let alert = UIAlertController.init(title: "Add new  Item", message: "", preferredStyle: .alert)
        
        

        let action = UIAlertAction.init(title: "Add ", style: .default) { (action) in
            
            print("sucess")
            print(textfield)
            
            if textfield.text == "" {
                
                self.tableView.reloadData()
            }
            else{
                self.fruits.append(textfield.text!)
                
               self.defaults.setValue(self.fruits, forKey: "ToDolistarray")
                self.tableView.reloadData()
            }
            
            

            
            
            
            }
        
        
    
        alert.addTextField { (alertTextField) in
            
            alertTextField.placeholder = "Add New Item"
            
            textfield = alertTextField
            
            
        }
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

