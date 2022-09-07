//
//  PaymentFactory.swift
//  DesignPattern
//
//  Created by Kevin Morales on 8/16/22.
//

import Foundation

final class PaymentFactory {
    static func buildPayment(paymentType: PaymentType) -> Payment {
        switch paymentType {
        case .google:
            return GooglePayment()
        case .apple:
            return ApplePayment()
        case .card:
            return CardPayment()
        case .stripe:
            return StripePayment()
        }
    }
}
