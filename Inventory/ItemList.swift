//
//  ItemList.swift
//  Inventory
//
//  Created by Cambrian on 2022-03-23.
//

import Foundation

let defaults = UserDefaults.standard

class ItemList{
    var items = [Item]()
    
    func addItem(item: Item){
        
    decodeData()
        items.append(item)
    encodeData()
        
        
    }
    
    func deleteItem(row: Int){
      decodeData()
        items.remove(at: row)
     encodeData()
        }
    
    
    func moveItem(from: Int, to: Int){
        
    decodeData()
    let mNewItem = items[from]
        items.remove(at: from)
        items.insert(mNewItem, at: to)
    encodeData()
        
        // complete code
    }
    
    
    func decodeData(){
        let defaults = UserDefaults.standard
        if let savedwords = defaults.object(forKey: "Items") as? Data {
            let jsonDecoder = JSONDecoder()
            do {
                items = try jsonDecoder.decode([Item].self, from: savedwords)
            }
            catch {
                print("Failed to fetch data")
            }
        }
    }
    
    func encodeData(){
        let jsonEncoder = JSONEncoder()
        if let savedData = try? jsonEncoder.encode(items) {
            // let defaults = UserDefaults.standard
            defaults.set(savedData, forKey: "Items")
        }
        else {
            print( "Failed to save data")
        }
    }
    
}
