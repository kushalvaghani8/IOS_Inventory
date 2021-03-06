//
//  ItemList.swift
//  Inventory
//
//  Created by Cambrian on 2022-03-23.
//

import Foundation

//let defaults = UserDefaults.standard

class ItemList{
    var items = [Item]()
    
    
    var itemURL: URL = {
        let documentDirectories = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = documentDirectories.first!
        return documentDirectory.appendingPathComponent("item.archive")
    }()
    
    init(){
        do{
            let data = try Data(contentsOf: itemURL)
            items = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as! [Item]
        }catch let err{
            print(err)
        }
    }
    
    func addItem(item: Item){
        
      //  decodeData() //decoding the data
        items.append(item) //adding it to the items'
     //   encodeData() //encoding it back again
    }
    
    func deleteItem(row: Int){
      //  decodeData() //decoding the data
        items.remove(at: row) //removing it from the data
      //  encodeData() //saving it back (encoding the data)
    }
    
    
    func moveItem(from: Int, to: Int){ //moving the data with from and two row passed (old to new)
        
       // decodeData() //decoding the data
        let mNewItem = items[from]
        items.remove(at: from) //removing the row from and
        items.insert(mNewItem, at: to) //adding it - to field
     //   encodeData() //encoding it back after the move
    }
    
    func editItem(row: Int, item: Item){
       // decodeData()
        
        items.remove(at: row)
        items.insert(item, at: row)
    }
    
    func save(){
        do{
            let data = try NSKeyedArchiver.archivedData(withRootObject: items, requiringSecureCoding: false)
            try data.write(to: itemURL)
        }catch let err{
            print(err)
        }
        
    }
    
    
    
//    func decodeData(){ //function to decode the data
//        let defaults = UserDefaults.standard
//        if let savedwords = defaults.object(forKey: "Items") as? Data {
//            let jsonDecoder = JSONDecoder()
//            do {
//                items = try jsonDecoder.decode([Item].self, from: savedwords)
//            }
//            catch {
//                print("Failed to fetch data")
//            }
//        }
//    }
//
//    func encodeData(){ // function for encoding the data
//        let jsonEncoder = JSONEncoder()
//        if let savedData = try? jsonEncoder.encode(items) {
//            // let defaults = UserDefaults.standard
//            defaults.set(savedData, forKey: "Items")
//        }
//        else {
//            print( "Failed to save data")
//        }
//    }
    
}
