//
//  Property+CoreDataProperties.swift
//  HomeInventory
//
//  Created by Cannon, James Alex on 10/24/16.
//  Copyright © 2016 Rob Elliott. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Property {

    @NSManaged var city: String?
    @NSManaged var country: String?
    @NSManaged var created_date: NSTimeInterval
    @NSManaged var latitude: Double
    @NSManaged var longitude: Double
    @NSManaged var postal_code: String?
    @NSManaged var property_name: String?
    @NSManaged var state: String?
    @NSManaged var street_address: String?
    @NSManaged var updated_date: NSTimeInterval
    @NSManaged var room: NSSet?

}
