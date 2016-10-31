//
//  AddCategoryViewController.swift
//  HomeInventory
//
//  Created by Rob Elliott on 10/18/16.
//  Copyright © 2016 Rob Elliott. All rights reserved.
//

import UIKit

class AddCategoryViewController: UIViewController {
    
    
    @IBOutlet weak var txtCategoryName: UITextField!
    
    @IBAction func btnSaveCategory(sender: AnyObject) {
        Category.addCategory(txtCategoryName.text!)
        navigationController?.popViewControllerAnimated(true)
    }
   
    
}