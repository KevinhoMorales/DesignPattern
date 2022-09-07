//
//  ConcreteColleagueFirst.swift
//  DesignPattern
//
//  Created by Kevin Morales on 9/1/22.
//

import Foundation

final class ConcreteColleagueFirst: Colleague {
    
    override func send(message: String) {
        mediator.send(message: message, colleague: self)
    }
    
    override func messageReceived(message: String) {
        print("First User Received Message -> \(message)")
    }
}
