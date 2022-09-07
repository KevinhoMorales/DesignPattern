//
//  CreditCardsCollection.swift
//  DesignPattern
//
//  Created by Kevin Morales on 8/19/22.
//

import Foundation

final class CreditCardsCollection {
    var items = [CreditCard]()
    
    func append(_ item: CreditCard) {
        self.items.append(item)
    }
    
}

extension CreditCardsCollection: Sequence {
    func makeIterator() -> CreditCardsIterator {
        let creditCardsIterator = CreditCardsIterator(cards: self)
        return creditCardsIterator
    }
}
