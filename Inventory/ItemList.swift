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
        
        let defaults = UserDefaults.standard
        if let savedwords = defaults.object(forKey: "Items") as? Data {
            let jsonDecoder = JSONDecoder()
            do {
                items = try jsonDecoder.decode([Item].self, from: savedwords)
            }
            catch {
                print("")
            }
        }
        print(item)
        items.append(item)
 
        let jsonEncoder = JSONEncoder()
        if let savedData = try? jsonEncoder.encode(items) {
          //  let defaults = UserDefaults.standard
            defaults.set(savedData, forKey: "Items")
        }
        else {
        print( "Failed to save data")
        }

    }
    
    func deleteItem(row: Int){
        let defaults = UserDefaults.standard
        if let savedwords = defaults.object(forKey: "Items") as? Data {
            let jsonDecoder = JSONDecoder()
            do {
                items = try jsonDecoder.decode([Item].self, from: savedwords)
            }
            catch {
                print("")
            }
        }
        items.remove(at: row)
        
        let jsonEncoder = JSONEncoder()
        if let savedData = try? jsonEncoder.encode(items) {
          //  let defaults = UserDefaults.standard
            defaults.set(savedData, forKey: "Items")
        }
        else {
        print( "Failed to save data")
        }
//        print("*******")
//        print(items.count)
//        print("*******")
    }
    
    func moveItem(from: Int, to: Int){
        
        let defaults = UserDefaults.standard
        if let savedwords = defaults.object(forKey: "Items") as? Data {
            let jsonDecoder = JSONDecoder()
            do {
                items = try jsonDecoder.decode([Item].self, from: savedwords)
            }
            catch {
                print("")
            }
        }
        let mNewItem = items[from]
        items.remove(at: from)
        items.insert(mNewItem, at: to)
        
        
        let jsonEncoder = JSONEncoder()
        if let savedData = try? jsonEncoder.encode(items) {
          //  let defaults = UserDefaults.standard
            defaults.set(savedData, forKey: "Items")
        }
        else {
        print( "Failed to save data")
        }
        
        // complete code
    }
    
}
