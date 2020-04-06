//
//  DetailViewController.swift
//  TableViewTest
//
//  Created by Kopec, David on 2/12/19.
//  Copyright © 2019 Kopec, David. All rights reserved.
//

import UIKit

class DetailViewControllerNote: UIViewController {

    @IBOutlet weak var detailImageView: UIImageView!
    
    @IBOutlet weak var detailDescriptionLabel: UITextView!
    

    func configureView() {
        // Update the user interface for the detail item.
        if let label = detailDescriptionLabel {
            label.text = "\(self.detailItem)"
        }
        if let image = detailImageView {
            image.image = imageItem
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: String = "Note"
    var imageItem: UIImage = #imageLiteral(resourceName: "placeholder.jpg")

    
}
