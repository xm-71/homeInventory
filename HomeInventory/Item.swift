//
//  Category.swift
//  HomeInventory
//
//  Created by Cannon, James Alex on 10/19/16.
//  Copyright © 2016 Rob Elliott. All rights reserved.


import UIKit
import CoreData


class Item: NSManagedObject {
    
    var selectedRoom: Room!
    
    var selectedCategory: Category!
    
    // Insert code here to add functionality to your managed object subclass
    
    // GET ALL PROPERTIES
    
    static func getAllItems() -> [NSManagedObject] {
        
        // STEP 1a:
        // REFERENCE TO THE APP DELEGATE
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        // STEP 1b:
        // REFERENCE TO THE MANAGED OBJECT CONTEXT
        let managedContext = appDelegate.managedObjectContext
        
        
        // STEP 2:
        // CREATE A FETCH REQUEST FOR A SPECIFIC ENTITY
        let fetchRequest = NSFetchRequest(entityName: "Item")
        
        
        // STEP 3:
        // CREATE A COLLECTION OF NSMANAGEDOBJECTS (PROPERTIES)
        var allItems = [NSManagedObject]()
        
        
        // STEP 4:
        // EXECUTE THE FETCH REQUEST
        do {
            let results = try managedContext.executeFetchRequest(fetchRequest)
            allItems = results as! [NSManagedObject]
        } catch let error as NSError {
            print("Could not fetch properties \(error), \(error.userInfo)")
        }
        
        
        // STEP 5:PROPERTIES
        
        return allItems
        
    }
    
    static func getAllItems() -> [NSManagedObject] {
        
        // STEP 1a:
        // REFERENCE TO THE APP DELEGATE
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        // STEP 1b:
        // REFERENCE TO THE MANAGED OBJECT CONTEXT
        let managedContext = appDelegate.managedObjectContext
        
        
        // STEP 2:
        // CREATE A FETCH REQUEST FOR A SPECIFIC ENTITY
        let fetchRequest = NSFetchRequest(entityName: "Item")
        
        
        // STEP 3:
        // CREATE A COLLECTION OF NSMANAGEDOBJECTS (PROPERTIES)
        var allItems = [NSManagedObject]()
        
        
        // STEP 4:
        // EXECUTE THE FETCH REQUEST
        do {
            let results = try managedContext.executeFetchRequest(fetchRequest)
            allItems = results as! [NSManagedObject]
        } catch let error as NSError {
            print("Could not fetch properties \(error), \(error.userInfo)")
        }
        
        
        // STEP 5:PROPERTIES
        
        return allItems
        
    }
    
    
    // ADD A NEW PROPERTY
    
    static func addItem(item_name: String, selectedRoom: Room, selectedCategory: Category) {
        
        // STEP 1a:
        // REFERENCE TO THE APP DELEGATE
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        // STEP 1b:
        // REFERENCE TO THE MANAGED OBJECT CONTEXT
        let managedContext = appDelegate.managedObjectContext
        
        
        // STEP 2:
        // DESCRIBE THE ENTITY (CLASS/ DB TABLE) WE WISH TO WORK WITH
        let entity = NSEntityDescription.entityForName("Item", inManagedObjectContext: managedContext)
        
        
        // STEP 3:
        // CREATE AN EMPTY INSTANCE OF THE ENTITY AND ADD IT TO THE M.O.C.
        let newItem = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
        
        
        // STEP 4:
        // ADD VALUES TO THE INSTANCE'S ATTRIBUTES
        newItem.setValue(item_name, forKey: "item_name")
        newItem.setValue(selectedRoom, forKey: "room")
        newItem.setValue(selectedCategory, forKey: "category")
        
        
        // STEP 5:
        // SEND THE INSTANCE TO THE DATABASE VIA THE M.O.C. ("deliver the object")
        
        do {
            try managedContext.save()
            
        } catch let error as NSError {
            
            print("Could not save new Item: \(error), \(error.userInfo)")
            
        }
        
    }
    
    
}





