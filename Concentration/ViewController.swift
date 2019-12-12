//
//  ViewController.swift
//  Concentration
//
//  Created by Ryan Yerge on 11/2/19.
//  Copyright © 2019 COP 3003 - Ryan Yerge. All rights reserved.

// Stopped at Video 1 -- 

import UIKit

class ViewController: UIViewController {
    
  private lazy var game = Concentration(numberOfPairsOfCards: numberOfPairOfCards)
    
    var numberOfPairOfCards: Int {
        get {
            return (cardButtons.count+1)/2
        }
    }
    
   private(set) var flipCount = 0 {
        didSet {                // property observer. Exe when field is set
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }

    @IBOutlet private var cardButtons: [UIButton]!
    
    @IBOutlet private weak var flipCountLabel: UILabel!
        
    @IBAction private func touchCard(_ sender: UIButton) {
        if let cardNumber = cardButtons.firstIndex(of: sender) {
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        } else {
            print("Chosen card not in collection")
        }
        
        flipCount += 1
    }
    
    private func updateViewFromModel() {
        for index in cardButtons.indices {
          let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp {
                button.setTitle(emoji(for:card), for: UIControl.State.normal)
                button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            } else {
                button.setTitle("", for: UIControl.State.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0) : #colorLiteral(red: 0.9286957578, green: 0.546177568, blue: 0, alpha: 1)
            }
        }
    }
    
   private var emojiChoices = ["🧙🏻","🧟‍♀️","🧛🏼‍♂️","🎃","😈","👹","👻","💀","👽"]
    
  private var emoji = [Int:String]()
    
   private func emoji(for card: Card) -> String {
        if emoji[card.identifier] == nil, // back to back if's
emojiChoices.count > 0 {
            emoji[card.identifier] = emojiChoices.remove(at: emojiChoices.count.arc4random)
            }
        return emoji[card.identifier] ?? "?"
    }
}

extension Int {
    var arc4random: Int {
        if self > 0 {
            return Int(arc4random_uniform(UInt32(self)))
        } else if self < 0 {
            return -Int(arc4random_uniform(UInt32(abs(self))))
        } else {
            return 0
        }
    }
}

