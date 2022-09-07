//
//  Colleague.swift
//  DesignPattern
//
//  Created by Kevin Morales on 9/1/22.
//

import Foundation

class Colleague {
    let mediator: Mediator
    
    init(mediator: Mediator) {
        self.mediator = mediator
    }
    
    func send(message: String) {
        
    }
    
    func messageReceived(message: String) {
        
    }
}
