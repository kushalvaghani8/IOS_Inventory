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
            
            print("its in item list \(items)")
        }
        else {
        print( "Failed to save word data")
        }

    }
    
    func deleteItem(row: Int){
        // complete code
    }
    
    func moveItem(from: Int, to: Int){
        // complete code
    }
    
}
