//
//  PaymentAdvancedCardFactory.swift
//  DesignPattern
//
//  Created by Kevin Morales on 8/18/22.
//

import Foundation

final class PaymentAdvancedCardFactory: AbstractFactory {
    func createPayment() -> PaymentAF {
        return CardPaymentAF()
    }
    
    func createMethod() -> Method {
        return AdvancedMethod()
    }
}
