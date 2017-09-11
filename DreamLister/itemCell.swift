//
//  itemCell.swift
//  DreamLister
//
//  Created by Mathusan Selvarajah on 2017-08-08.
//  Copyright © 2017 Mathusan. All rights reserved.
//

import UIKit

class itemCell: UITableViewCell {
    
    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var details: UILabel!
    
    
    func configureCell(item: Item) {
        
        title.text = item.title
        price.text = "$\(item.price)"
        details.text = item.details
    }
    
}
