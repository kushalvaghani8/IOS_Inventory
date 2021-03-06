//
//  ItemTableViewController.swift
//  Inventory
//
//  Created by Cambrian on 2022-03-23.
//

import UIKit

class ItemTableViewController: UITableViewController {
    
    var itemList = ItemList()
   // var item = [Item]()
    
    let detailView = DetailsViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        
//        let defaults = UserDefaults.standard //decoding the data to display in table view
//        if let savedwords = defaults.object(forKey: "Items") as? Data {
//            let jsonDecoder = JSONDecoder()
//            do {
//                item = try jsonDecoder.decode([Item].self, from: savedwords)
//            }
//            catch {
//                print("Failed to decode data")
//            }
//        }
        tableView.reloadData()
        //print(item.count)
    }
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return itemList.items.count//getting items count for number of rows
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "item", for: indexPath)
        
        let items = itemList.items[indexPath.row] //saving each item at index path
        cell.textLabel?.text = items.name //displaying items at indexpath
     //  print(cell)
        return cell
       
    }
    
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            itemList.deleteItem(row: indexPath.row) //passing the data to delete the row
          //  item.remove(at: indexPath.row)
            // Delete the row from the data source
            //tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.reloadData()
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    
    
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
         
         itemList.moveItem(from: fromIndexPath.row, to: to.row)
//         var mbanana = to.row
//         print(mbanana)
     
     }
     
    
    
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dst = segue.destination as! DetailsViewController
        dst.itemList = itemList
        dst.index = tableView.indexPathForSelectedRow?.row //passing the index to fill in the fields in detail view
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
    }
    
}
