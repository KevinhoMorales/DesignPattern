//
//  CreditCardReciver.swift
//  DesignPattern
//
//  Created by Kevin Morales on 8/19/22.
//

import Foundation

final class CreditCardReciver {
    func sendPINNumberToCustomer() {
        print("PIN Sent!")
    }
    
    func sendSMSToCustomerActive() {
        print("SMS Sent!")
    }
    
    func activate() {
        print("Credit Card Activated!")
    }
    
    func desactivate() {
        print("Credit Card Desactivated!")
    }
    
    func sendSMSToCustomerDesactivate() {
        print("SMS Desactivated!")
    }
}
