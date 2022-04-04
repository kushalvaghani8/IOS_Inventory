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
            //  itemList.decodeData() //decoding the data
            nameField.text =  itemList.items[index].name //displaying the name from the users' selected row
            SKUField.text = itemList.items[index].SKU//displaying the sku from the users' selected row
            descField.text = itemList.items[index].Description//displaying the description from the users' selected row
            dateField.date = itemList.items[index].dateAdded //displaying the date from the users' selected row
        }
    }
    
    
    @IBAction func save(_ sender: Any) { //saving the data
        if index == nil{
            if !nameField.text!.isEmpty && !SKUField.text!.isEmpty && !descField.text!.isEmpty{ //getting text from text field
                let name = nameField.text!
                let sku = SKUField.text!
                let desc = descField.text!
                let date = dateField.date
                let item = Item(name: name, SKU: sku, Description: desc, dateAdded: date)
                itemList.addItem(item: item)
                navigationController?.popViewController(animated: true)
            }
        } else {
            if !nameField.text!.isEmpty && !SKUField.text!.isEmpty && !descField.text!.isEmpty{
                let name = nameField.text!
                let sku = SKUField.text!
                let desc = descField.text!
                let date = dateField.date
                let item = Item(name: name, SKU: sku, Description: desc, dateAdded: date)
                itemList.editItem(row: index , item: item)
                navigationController?.popViewController(animated: true)
            }
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
