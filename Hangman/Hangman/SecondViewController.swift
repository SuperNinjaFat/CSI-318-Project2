//
//  SecondViewController.swift
//  Hangman
//
//  Created by Kopec, David on 1/31/20.
//  Copyright © 2020 Kopec, David. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var highscoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let score = UserDefaults.standard.integer(forKey: "score")
        
        highscoreLabel.text = String(score)
        
        // Do any additional setup after loading the view.
    }


}

