//
//  ItemTableViewController.swift
//  HomeInventory
//
//  Created by Rob Elliott on 10/18/16.
//  Copyright © 2016 Rob Elliott. All rights reserved.
//

import UIKit

class ItemTableViewController: UITableViewController {
    
    var selectedItem: Item!
    
    override func viewDidAppear(animated: Bool) {
        print(selectedItem.property_name)
    }

}