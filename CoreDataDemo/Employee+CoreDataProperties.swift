//
//  Employee+CoreDataProperties.swift
//  CoreDataDemo
//
//  Created by Rishi Jha on 01/03/24.
//
//

import Foundation
import CoreData


extension Employee {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Employee> {
        return NSFetchRequest<Employee>(entityName: "Employee")
    }

    @NSManaged public var name: String?

}

extension Employee : Identifiable {

}
