//
//  Room+CoreDataProperties.swift
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

extension Room {

    @NSManaged var room_name: String?
    @NSManaged var floor: String?
    @NSManaged var created_date: NSTimeInterval
    @NSManaged var updated_date: NSTimeInterval
    @NSManaged var items: NSSet?
    @NSManaged var category: NSSet?

}
