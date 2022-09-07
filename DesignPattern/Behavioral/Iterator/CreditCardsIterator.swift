//
//  CreditCardsIterator.swift
//  DesignPattern
//
//  Created by Kevin Morales on 8/19/22.
//

import Foundation

final class CreditCardsIterator: IteratorProtocol {
    
    private var position = 0
    let cards: CreditCardsCollection
    
    init(cards: CreditCardsCollection) {
        self.cards = cards
    }
    
    func next() -> CreditCard? {
        defer {
            position += 1
        }
        return cards.items.count > position ? cards.items[position] : nil
    }
}
