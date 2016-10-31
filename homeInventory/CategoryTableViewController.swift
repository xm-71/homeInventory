//
//  CategoryTableViewController.swift
//  HomeInventory
//
//  Created by Rob Elliott on 10/18/16.
//  Copyright © 2016 Rob Elliott. All rights reserved.
//

import UIKit

class CategoryTableViewController: UITableViewController {
    
    
    var selectedProperty: Property!
    var selectedRoom: Room!
    var selectedItem: Item!
    var selectedCategory: Category!
    
    override func viewDidAppear(animated: Bool) {
        tableView.reloadData()
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return Category.getAllCategories().count
        
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier("catergoryCell", forIndexPath: indexPath)
        
        let thisCategory = Category.getAllCategories()[indexPath.row] as! Category
        
        cell.textLabel?.text = thisCategory.catergory_name
        
        return cell
    }
    
  
            
        }
