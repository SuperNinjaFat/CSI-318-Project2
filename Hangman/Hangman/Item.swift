//
//  Item.swift
//  Hangman
//
//  Created by user167012 on 4/2/20.
//  Copyright © 2020 Kopec, David. All rights reserved.
//

import Foundation
import UIKit

class Item: NSObject {
    
    var desc: String
    var image: UIImage
    
    init(desc: String, image: UIImage?) {
        self.desc = desc
        self.image = image!
    }
    
    convenience override init() {
        self.init(desc: "Note", image: #imageLiteral(resourceName: "placeholder.jpg"))
    }
    
}
