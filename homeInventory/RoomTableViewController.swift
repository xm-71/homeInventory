//
//  RoomTableViewController.swift
//  HomeInventory
//
//  Created by Rob Elliott on 10/18/16.
//  Copyright © 2016 Rob Elliott. All rights reserved.
//

import UIKit

class RoomTableViewController: UITableViewController {
    
    var selectedProperty: Property!
    var selectedRoom: Room!
    
    override func viewDidAppear(animated: Bool) {
        tableView.reloadData()
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return Room.getAllRoomsForProperty(selectedProperty).count
        
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier("roomCell", forIndexPath: indexPath)
        
        let thisRoom = Room.getAllRoomsForProperty(selectedProperty)[indexPath.row] as! Room
        
        cell.textLabel?.text = thisRoom.room_name
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "segueAddRoomViewTVC"{
            
           let addRoomTVC = segue.destinationViewController as! AddRoomViewController
            
            addRoomTVC.selectedProperty = selectedProperty
            }
            
            else if segue.identifier == "segueItemTVC"{
            
                if let row = tableView.indexPathForSelectedRow?.row {
                    
                    let tappedRoom = Room.getAllRoomsForProperty(selectedProperty)[row] as! Room
                    
                    let roomViewTVC = segue.destinationViewController as! RoomTableViewController
                    
                    roomViewTVC.selectedRoom = tappedRoom
                
                }
            
            }
            
        }
    }
    


