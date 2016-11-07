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
        
        return Item.getAllItemsForRoom(selectedRoom).count
        
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier("itemCell", forIndexPath: indexPath)
        
        let thisItem = Item.getAllItemsForRoom(selectedRoom)[indexPath.row] as! Item
        
        cell.textLabel?.text = thisItem.item_name
        
        cell.detailTextLabel?.text = thisItem.category?.catergory_name
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "segueAddItemVC" {
            
            // FIGURE OUT THE DESTINATION VIEW CONTROLLER
            let addItemVC = segue.destinationViewController as! AddItemViewController
            
            // PASS THE OBJECT FOR THAT ROW TO THE DESTINATION VIEW CONTROLLER
            addItemVC.selectedRoom = selectedRoom
            }
            
        }
    }




