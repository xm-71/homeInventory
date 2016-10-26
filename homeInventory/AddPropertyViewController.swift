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
    }
    
    @IBOutlet weak var txtPropertyName: UITextField!
    @IBOutlet weak var txtStreetAddress: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtState: UITextField!
    @IBOutlet weak var txtZip: UITextField!
    @IBOutlet weak var txtCountry: UITextField!
}