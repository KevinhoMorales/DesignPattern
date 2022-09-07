//
//  AbstractFactory.swift
//  DesignPattern
//
//  Created by Kevin Morales on 8/18/22.
//

import Foundation

protocol AbstractFactory {
    func createPayment() -> PaymentAF
    func createMethod() -> Method
}
