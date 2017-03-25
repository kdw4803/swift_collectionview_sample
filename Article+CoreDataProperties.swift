//
//  Article+CoreDataProperties.swift
//  memo
//
//  Created by Brad on 25/03/2017.
//  Copyright © 2017 brad. All rights reserved.
//

import Foundation
import CoreData


extension Article {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Article> {
        return NSFetchRequest<Article>(entityName: "Article");
    }

    @NSManaged public var title: String?
    @NSManaged public var content: String?
    @NSManaged public var image: NSData?
    @NSManaged public var createdAt: NSDate?

}
