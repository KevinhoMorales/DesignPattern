//
//  CreditCardDesactiveCommand.swift
//  DesignPattern
//
//  Created by Kevin Morales on 8/19/22.
//

import Foundation

final class CreditCardDesactiveCommand: Command {
    var creditCardReceiver: CreditCardReciver
    
    init(creditCardReceiver: CreditCardReciver) {
        self.creditCardReceiver = creditCardReceiver
    }
    
    func execute() {
        creditCardReceiver.desactivate()
        creditCardReceiver.sendSMSToCustomerDesactivate()
    }
}
