//
//  AddPropertyViewController.swift
//  HomeInventory
//
//  Created by Rob Elliott on 10/18/16.
//  Copyright © 2016 Rob Elliott. All rights reserved.
//

import UIKit

class AddPropertyViewController: UIViewController {
    
    @IBAction func btnSaveProperty(sender: AnyObject) {
        
        Property.addProperty(txtPropertyName.text!)
        navigationController?.popViewControllerAnimated(true)
    }
    
    @IBOutlet weak var txtPropertyName: UITextField!
   
}