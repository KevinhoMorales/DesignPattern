//
//  ConcreteColleagueSecond.swift
//  DesignPattern
//
//  Created by Kevin Morales on 9/1/22.
//

import Foundation

final class ConcreteColleagueSecond: Colleague {
    
    override func send(message: String) {
        mediator.send(message: message, colleague: self)
    }
    
    override func messageReceived(message: String) {
        print("Second User Received Message -> \(message)")
    }
}
