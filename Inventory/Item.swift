//
//  Item.swift
//  Inventory
//
//  Created by Cambrian on 2022-03-23.
//

import Foundation

class Item: NSObject, NSCoding {
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
    
    
    required init?(coder: NSCoder) {
        name = coder.decodeObject(forKey: "name") as! String
        SKU = coder.decodeObject(forKey: "SKU") as! String
        Description = coder.decodeObject(forKey: "Description") as! String
        dateAdded = coder.decodeObject(forKey: "dateAdded") as! Date
        super.init()
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(name, forKey: "name")
        coder.encode(SKU, forKey: "SKU")
        coder.encode(Description, forKey: "Description")
        coder.encode(dateAdded, forKey: "dateAdded")
    }
    
}
