//
//  HangmanViewController.swift
//  Hangman
//
//  Created by Kopec, David on 1/31/20.
//  Copyright © 2020 Kopec, David. All rights reserved.
//

import UIKit

class HangmanViewController: UIViewController, UITextFieldDelegate {

    var correctWord = "chicken"
    var guess = ""
    var lives = 5
    
    var guessPool : [String] = []
    var secretWord = ""
    
    @IBOutlet weak var hangLabel: UILabel!
    @IBOutlet weak var livesLabel: UILabel!
    
    @IBOutlet weak var hangView: UIImageView!
    
    func updateSeretWord() {
        secretWord = String(correctWord.map{
            if $0 == " " {
                return $0
            }
            if guessPool.contains(String($0)) {
                return $0
            }
            return "_"
        })
        hangLabel.text = secretWord
        
        if secretWord == correctWord {
            UserDefaults.standard.setValue(lives, forKey: "score")
            let uiac: UIAlertController = UIAlertController.init(title:"You Won", message: "Good Job!!!", preferredStyle: .alert)
            uiac.addAction(UIAlertAction(title: "Close", style: .cancel, handler: nil))
            self.present(uiac, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        livesLabel.text = String(lives)
        updateSeretWord()
        
        
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        
        if let firstLetter = textField.text?.first
        {
            let firstLetterStr = String(firstLetter).lowercased()
            if !correctWord.contains(firstLetterStr){
                lives -= 1
                livesLabel.text = String(lives)
            }
            guessPool.append(firstLetterStr)
            updateSeretWord()
            textField.text = "";
        }
        textField.resignFirstResponder()
        return true
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
