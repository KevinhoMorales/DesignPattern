//
//  CreditCardInvoker.swift
//  DesignPattern
//
//  Created by Kevin Morales on 8/19/22.
//

import Foundation

final class CreditCardInvoker {
    private var command: Command?
    
    func setCommand(command: Command) {
        self.command = command
    }
    
    func run() {
        command?.execute()
    }
}
