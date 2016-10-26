//
//  PropertyTableViewController.swift
//  HomeInventory
//
//  Created by Rob Elliott on 10/18/16.
//  Copyright © 2016 Rob Elliott. All rights reserved.
//

import UIKit

class PropertyTableViewController: UITableViewController {
    
    override func viewDidAppear(animated: Bool) {
        tableView.reloadData()
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return Property.getAllProperties().count
        
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        
        
        let cell = tableView.dequeueReusableCellWithIdentifier("propertyCell", forIndexPath: indexPath)
        
        let thisProperty = Property.getAllProperties()[indexPath.row] as! Property
        
        cell.textLabel?.text = thisProperty.property_name
        
        return cell
    }
    
}
