//
//  ItemDetailVC.swift
//  DreamLister
//
//  Created by Mathusan Selvarajah on 2017-09-20.
//  Copyright © 2017 Mathusan. All rights reserved.
//

import UIKit
import CoreData

class ItemDetailVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var storePicker: UIPickerView!
    @IBOutlet weak var titleField: CustomTextField!
    @IBOutlet weak var priceField: CustomTextField!
    @IBOutlet weak var detailsField: CustomTextField!
    
    
    var stores = [Store]()
    override func viewDidLoad() {
        storePicker.delegate = self
        storePicker.dataSource = self
        
        super.viewDidLoad()
        
        //Removing previous text on navigation bar, now will only contain the left chevron to go back
        if let topItem = self.navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        }
//        
//        let store = Store(context: context)
//        store.name = "Best Buy"
//        
//        let store2 = Store(context: context)
//        store2.name = "Future Shop"
//        
//        let store3 = Store(context: context)
//        store3.name = "Tesla"
//        
//        let store4 = Store(context: context)
//        store4.name = "Amazon"
//        
//        let store5 = Store(context: context)
//        store5.name = "Walmart"
//        
//        let store6 = Store(context: context)
//        store6.name = "Target"
//        
//        ad.saveContext()
        
        getStores()
        
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        let store = stores[row]
        return store.name
        
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return stores.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //Update when selected
    }
    
    func getStores() {
        let fetchRequest: NSFetchRequest<Store> = Store.fetchRequest()
        
        do {
            self.stores = try context.fetch(fetchRequest)
            self.storePicker.reloadAllComponents()
        } catch {
            //Handle error
        }
        
    }
    
    
}
