//
//  DetailsViewController.swift
//  Inventory
//
//  Created by Cambrian on 2022-03-23.
//

import UIKit

//protocol detailViewDelegate{
//    func saveItemList(items:Item)
//}

class DetailsViewController: UIViewController {
    
    var itemList:ItemList!
    var items = [Item]()
    var index : Int!
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var SKUField: UITextField!
    @IBOutlet weak var descField: UITextField!
    @IBOutlet weak var dateField: UIDatePicker!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        
    }

    override func viewWillAppear(_ animated: Bool) {
        if index != nil {
            itemList.decodeData()
            nameField.text =  itemList.items[index].name
            SKUField.text = itemList.items[index].SKU
            descField.text = itemList.items[index].Description
            dateField.date = itemList.items[index].dateAdded
        }
    }
    
//    override func viewWillDisappear(_ animated: Bool) {
//        let items = Item(name: nameField.text!, SKU: SKUField.text!, Description: descField.text!, dateAdded: dateField.date)
//        itemList.editItem(row: index, item: items)
//        itemList.encodeData()
//    }

    
    @IBAction func save(_ sender: Any) {
        
        
        if !nameField.text!.isEmpty && !SKUField.text!.isEmpty && !descField.text!.isEmpty{
            //getting text from text field
            let items = Item(name: nameField.text!, SKU: SKUField.text!, Description: descField.text!, dateAdded: dateField.date)
            itemList.addItem(item: items)
        }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
