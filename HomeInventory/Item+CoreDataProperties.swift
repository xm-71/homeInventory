//
//  Item+CoreDataProperties.swift
//  HomeInventory
//
//  Created by Cannon, James Alex on 10/19/16.
//  Copyright © 2016 Rob Elliott. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Item {

    @NSManaged var item_name: String?
    @NSManaged var purchase_date: NSTimeInterval
    @NSManaged var purchase_price: NSDecimalNumber?
    @NSManaged var serial_number: String?
    @NSManaged var item_image: NSTimeInterval
    @NSManaged var created_date: NSTimeInterval
    @NSManaged var updated_date: NSTimeInterval
    @NSManaged var room: Room?

}
