//
//  AddItemViewController.swift
//  HomeInventory
//
//  Created by Rob Elliott on 10/18/16.
//  Copyright © 2016 Rob Elliott. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {
    
   
    @IBOutlet weak var txtItemName: UITextField!
    
    @IBOutlet weak var txtSerialNumber: UITextField!
    
    @IBOutlet weak var txtPurchasePrice: UITextField!
    
    @IBOutlet weak var txtPurchaseDate: UITextField!
    
    
    @IBAction func btnSaveItem(sender: AnyObject) {
        Item.addItem(txtItemName.text!)
        Item.addItem(txtSerialNumber.text!)
        Item.addItem(txtPurchaseDate.text!)
        Item.addItem(txtPurchasePrice.text!)
        
        
        navigationController?.popViewControllerAnimated(true)
        
    }
    
}
    
