//
//  ItemTableViewController.swift
//  HomeInventory
//
//  Created by Rob Elliott on 10/18/16.
//  Copyright © 2016 Rob Elliott. All rights reserved.
//

import UIKit

class ItemTableViewController: UITableViewController {
    
    var selectedProperty: Property!
    var selectedRoom: Room!
    var selectedItem: Item!
    
    override func viewDidAppear(animated: Bool) {
        tableView.reloadData()
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return Item.getAllItems().count
        
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier("itemCell", forIndexPath: indexPath)
        
        let thisItem = Item.getAllItems()[indexPath.row] as! Item
        
        cell.textLabel?.text = thisItem.item_name
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "segueItemTVC"{
            
            
            if let row = tableView.indexPathForSelectedRow?.row {
                
                let tappedItem = Item.getAllItems()[row] as! Item
                
                let ItemTVC = segue.destinationViewController as! ItemTableViewController
                
                ItemTVC.selectedItem = tappedItem
            }
            
        }
    }

}