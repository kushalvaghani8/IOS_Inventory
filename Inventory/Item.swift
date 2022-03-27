//
//  Item.swift
//  Inventory
//
//  Created by Cambrian on 2022-03-23.
//

import Foundation

class Item: NSObject, Codable {
    var name: String
    var SKU: String
    var Description: String
    var dateAdded: Date
    
    init(name: String, SKU: String, Description: String, dateAdded: Date){
        self.name = name
        self.SKU = SKU
        self.Description = Description
        self.dateAdded = dateAdded
    }
}
