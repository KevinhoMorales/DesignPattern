//
//  MonthlyAppleFactory.swift
//  DesignPattern
//
//  Created by Kevin Morales on 8/18/22.
//

import Foundation

final class MonthlyAppleFactory: AbstractFactory {
    func createPayment() -> PaymentAF {
        return ApplePaymentAF()
    }
    
    func createMethod() -> Method {
        return MonthlyMethod()
    }
}
