//
//  Property.swift
//  HomeInventory
//
//  Created by Cannon, James Alex on 10/19/16.
//  Copyright © 2016 Rob Elliott. All rights reserved.
//


import UIKit
import CoreData


class Property: NSManagedObject {

    static func addProperty(propertyName:String){
    
let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    
    let managedContext = appDelegate.managedObjectContext
    
    let entity = NSEntityDescription.entityForName("Property", inManagedObjectContext: managedContext)
    
    let newProperty = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
    
    newProperty.setValue(propertyName, forKey: "property_name")
        
 
        do{
        
        try managedContext.save()
        
        }
        
        catch let error as NSError {
        
            print("Could not save new property: \(error), \(error.userInfo)")
        
        }

    
}
    
    static func getAllProperties() -> [NSManagedObject] {
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
     let managedContext = appDelegate.managedObjectContext
        
        let fetchRequest = NSFetchRequest(entityName: "Property")
        
        var allProperties = [NSManagedObject]()
        
        do{
            
            let results = try managedContext.executeFetchRequest(fetchRequest)
            
            allProperties = results as! [NSManagedObject]
        
        }
        
        catch let error as NSError {
        
            
            print("Could not save new property: \(error), \(error.userInfo)")
        
        
        }
        
        return allProperties
        
        

}







}