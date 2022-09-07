//
//  VisaCard.swift
//  DesignPattern
//
//  Created by Kevin Morales on 8/19/22.
//

import Foundation

final class VisaCard: PrototypeCard {
    var cardName = "VISA"
    
    func copy() -> Any {
        return copy(with: nil)
    }
    
    override func copy(with zone: NSZone? = nil) -> Any {
        guard let prototype = super.copy(with: zone) as? VisaCard else { return VisaCard() }
        prototype.cardName = cardName
        print("Cloned VISA Card")
        return prototype
    }
}
