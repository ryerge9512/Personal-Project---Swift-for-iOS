//
//  Card.swift
//  Concentration
//
//  Created by Ryan Yerge on 12/6/19.
//  Copyright © 2019 COP 3003 - Ryan Yerge. All rights reserved.
//

import Foundation

struct Card : Hashable
{
    
    var hashValue: Int { return identifier}
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
    
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
        
    }
}
