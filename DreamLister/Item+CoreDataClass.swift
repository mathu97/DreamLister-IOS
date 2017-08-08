//
//  Item+CoreDataClass.swift
//  DreamLister
//
//  Created by CLQA on 2017-08-08.
//  Copyright © 2017 Mathusan. All rights reserved.
//

import Foundation
import CoreData

@objc(Item)

public class Item: NSManagedObject {
    
    public override func awakeFromInsert() {
        
        super.awakeFromInsert()
        self.created = NSDate()
        
    }
}
