//
//  ViewController.swift
//  tabelViewInClass
//
//  Created by sebashtian rodriguez on 11/28/22.
//

import UIKit
var sampleData = ["a","b","c"]
var items: [Item] = []
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
  
    @IBOutlet weak var tableView: UITableView!
    

    @IBOutlet weak var newItem: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let itemOne = Item(name: "milk", number: 9000)
        let itemTwo = Item(name: "frends", number: 2)
        let itemThree = Item(name: "cars", number: 2)
        let itemFore = Item(name: "money", number: 1548)
        
        items = [itemOne,itemTwo,itemThree,itemFore]
        print(items)
        
    }

    @IBAction func whenAddItemButtonPress(_ sender: Any) {
        if  let newItemName = newItem.text {
            let newItem2 = Item(name: newItemName, number: 1)
            items.append(newItem2)
            newItem.text = ""
            tableView.reloadData()
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return sampleData.count
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =
                tableView.dequeueReusableCell(withIdentifier: "ceIlld", for: indexPath)
        let currentItems = items[indexPath.row]
        cell.textLabel?.text = currentItems.name
                return cell
    }
}

