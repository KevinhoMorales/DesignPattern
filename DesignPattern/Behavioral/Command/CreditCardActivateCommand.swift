//
//  CreditCardActivateCommand.swift
//  DesignPattern
//
//  Created by Kevin Morales on 8/19/22.
//

import Foundation

final class CreditCardActivateCommand: Command {
    var creditCardReceiver: CreditCardReciver
    
    init(creditCardReceiver: CreditCardReciver) {
        self.creditCardReceiver = creditCardReceiver
    }
    
    func execute() {
        creditCardReceiver.sendPINNumberToCustomer()
        creditCardReceiver.activate()
        creditCardReceiver.sendSMSToCustomerActive()
    }
}
