//
//  PaymentMethodClient.swift
//  DesignPattern
//
//  Created by Kevin Morales on 8/18/22.
//

import Foundation

final class PaymentMethodClient {
    static func codigoCliente(factory: AbstractFactory){
        let payment = factory.createPayment()
        let method = factory.createMethod()
        payment.doPayment()
        method.calculatePayment()
    }
}
