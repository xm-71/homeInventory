//
//  AddRoomViewController.swift
//  HomeInventory
//
//  Created by Rob Elliott on 10/18/16.
//  Copyright © 2016 Rob Elliott. All rights reserved.
//

import UIKit

class AddRoomViewController: UIViewController {
    
    var selectedProperty: Property!
    
    @IBAction func btnSaveRoom(sender: AnyObject) {
        Room.addRoom(txtRoomName.text!, selectedProperty: selectedProperty)
        
        navigationController?.popViewControllerAnimated(true)
        
    }
    
    @IBOutlet weak var txtRoomName: UITextField!
   
    @IBOutlet weak var txtFloorName: UITextField!

    
}

   
    
    
