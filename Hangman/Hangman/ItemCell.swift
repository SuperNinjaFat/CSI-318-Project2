//
//  ItemCell.swift
//  Hangman
//
//  Created by user167012 on 4/6/20.
//  Copyright © 2020 Kopec, David. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {
    
    @IBOutlet var descLabel: UILabel!
//    @IBOutlet var serialNumberLabel: UILabel!
//    @IBOutlet var imageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        descLabel.adjustsFontForContentSizeCategory = true
//        serialNumberLabel.adjustsFontForContentSizeCategory = true
//        valueLabel.adjustsFontForContentSizeCategory = true
    }
    
}
