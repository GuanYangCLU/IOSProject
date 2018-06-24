//
//  ViewController.swift
//  gametest1
//
//  Created by 杨冠 on 2018/6/23.
//  Copyright © 2018年 CLU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0 {
        didSet {
            flipCountLable.text = "Flips: \(flipCount)"
//            print(flipCount)
        }
    }
    
    @IBOutlet weak var flipCountLable: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["🐶","🐱","🐷","🐔"]
    
    @IBAction func touchCard(_ sender: UIButton) {
//        print("A dog")
//        flipCount += 2
//        print(flipCount) //call flipCount will call didSet
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
//        print("Card Number = \(cardNumber)")
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("Chosen card was not in cardButtons")
        }
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton){
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
            
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }

}

