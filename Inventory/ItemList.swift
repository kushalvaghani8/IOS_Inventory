//
//  ItemList.swift
//  Inventory
//
//  Created by Cambrian on 2022-03-23.
//

import Foundation

class ItemList{
    var items = [Item]()
    
    func addItem(item: Item){
        
        items.append(item)
        
        let jsonEncoder = JSONEncoder()
        if let savedData = try? jsonEncoder.encode(items) {
            let defaults = UserDefaults.standard
            defaults.set(savedData, forKey: "Items")
        }
        else {
        print( "Failed to save data")
        }

    }
    
    func deleteItem(row: Int){
        items.remove(at: row)
    }
    
    func moveItem(from: Int, to: Int){
        // complete code
    }
    
}
