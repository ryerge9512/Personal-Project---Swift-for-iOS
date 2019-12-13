//
//  ViewController.swift
//  Concentration
//
//  Created by Ryan Yerge on 11/2/19.
//  Copyright © 2019 COP 3003 - Ryan Yerge. All rights reserved.

// Stopped at Video 1 -- 

import UIKit

class ConcentrationViewController: UIViewController {
    
  private lazy var game = Concentration(numberOfPairsOfCards: numberOfPairOfCards)
    
    var numberOfPairOfCards: Int {
        get {
            return (cardButtons.count+1)/2
        }
    }
    
   private(set) var flipCount = 0 {
        didSet {                // property observer. Exe when field is set
            updateFlipCountLabel()
        }
    }
    
    private func updateFlipCountLabel() {
        let attributes: [NSAttributedString.Key: Any] = [
            .strokeWidth : 5.0,
            .strokeColor : UIColor.black
            ]
        
        let attributedString = NSAttributedString(string: "Flips: \(flipCount)", attributes: attributes)
        flipCountLabel.attributedText = attributedString
    }

    @IBOutlet private var cardButtons: [UIButton]!
    
    @IBOutlet private weak var flipCountLabel: UILabel! {
        didSet {
            updateFlipCountLabel()
        }
    }
        
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
        if cardButtons != nil {
        for index in cardButtons.indices {
          let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp {
                button.setTitle(emoji(for:card), for: UIControl.State.normal)
                button.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            } else {
                button.setTitle("", for: UIControl.State.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0) : #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
            }
        }
        }
    }
    
  // private var emojiChoices = ["🧙🏻","🧟‍♀️","🧛🏼‍♂️","🎃","😈","👹","👻","💀","👽"]
    var theme: String? {
        didSet {
            emojiChoices = theme ?? ""
            emoji = [:]
            updateViewFromModel()
        }
    }
    private var emojiChoices = "🧙🏻🧟‍♀️🧛🏼‍♂️🎃😈👹👻💀👽"
    
  private var emoji = [Card:String]()
    
   private func emoji(for card: Card) -> String {
        if emoji[card] == nil, // back to back if's
emojiChoices.count > 0 {
            let randomStringIndex = emojiChoices.index(emojiChoices.startIndex, offsetBy: emojiChoices.count.arc4random)
            emoji[card] = String(emojiChoices.remove(at: randomStringIndex))
            }
        return emoji[card] ?? "?"
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

