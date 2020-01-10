//
//  Student+CoreDataProperties.swift
//  CoreDataBasics
//
//  Created by Santosh Chaurasia on 1/10/20.
//  Copyright © 2020 Santosh Chaurasia. All rights reserved.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var name: String?
    @NSManaged public var id: String?

}
