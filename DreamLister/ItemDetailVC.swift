//
//  ItemDetailVC.swift
//  DreamLister
//
//  Created by Mathusan Selvarajah on 2017-09-20.
//  Copyright © 2017 Mathusan. All rights reserved.
//

import UIKit

class ItemDetailVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var storePicker: UIPickerView!
    @IBOutlet weak var titleField: CustomTextField!
    @IBOutlet weak var priceField: CustomTextField!
    @IBOutlet weak var detailsField: CustomTextField!
    
    storePicker.delegate = self
    storePicker.dataSource = self
    
    var stores = [Store]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Removing previous text on navigation bar, now will only contain the left chevron to go back
        if let topItem = self.navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        }

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
    
    
}
