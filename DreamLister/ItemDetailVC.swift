//
//  ItemDetailVC.swift
//  DreamLister
//
//  Created by Mathusan Selvarajah on 2017-09-20.
//  Copyright © 2017 Mathusan. All rights reserved.
//

import UIKit

class ItemDetailVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Removing previous text on navigation bar, now will only contain the left chevron to go back
        if let topItem = self.navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
