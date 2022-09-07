//
//  PrototypeCard.swift
//  DesignPattern
//
//  Created by Kevin Morales on 8/19/22.
//

import Foundation

class PrototypeCard: NSCopying {
    var cardNumber = 0
    var cardType = ""
    
    required init(cardNumer: Int = 0, cardType: String = "") {
        self.cardNumber = cardNumer
        self.cardType = cardType
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let prototype = type(of: self).init()
        prototype.cardNumber = cardNumber
        prototype.cardType = cardType
        print("Values has been cloned")
        return prototype
    }
}
