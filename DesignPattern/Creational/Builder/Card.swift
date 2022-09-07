//
//  Card.swift
//  DesignPattern
//
//  Created by Kevin Morales on 8/18/22.
//

import Foundation

class Card {
    private var cardType = ""
    private var number = ""
    private var expired = 0
    private var securityCode = 0
    
    func showCard() -> String {
        "Card Type: \(cardType)\n\nCard Number: \(number)\n\nCard Expired: \(expired)\n\nSecurity Code: \(securityCode)"
    }
    
    class CardBuilder {
        private var innerCard = Card()
        
        func cardType(cardType: String) -> CardBuilder {
            innerCard.cardType = cardType
            return self
        }
        func number(number: String) -> CardBuilder {
            innerCard.number = number
            return self
        }
        func expired(expired: Int) -> CardBuilder {
            innerCard.expired = expired
            return self
        }
        func securityCode(securityCode: Int) -> CardBuilder {
            innerCard.securityCode = securityCode
            return self
        }
        func build() -> Card {
            return innerCard
        }
    }
}
