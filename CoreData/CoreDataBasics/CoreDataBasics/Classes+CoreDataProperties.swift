//
//  Classes+CoreDataProperties.swift
//  CoreDataBasics
//
//  Created by Santosh Chaurasia on 1/10/20.
//  Copyright © 2020 Santosh Chaurasia. All rights reserved.
//
//

import Foundation
import CoreData


extension Classes {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Classes> {
        return NSFetchRequest<Classes>(entityName: "Classes")
    }

    @NSManaged public var standard: String?
    @NSManaged public var totalCount: String?

}
