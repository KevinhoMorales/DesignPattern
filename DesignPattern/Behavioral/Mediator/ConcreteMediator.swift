//
//  ConcreteMediator.swift
//  DesignPattern
//
//  Created by Kevin Morales on 9/1/22.
//

import Foundation

final class ConcreteMediator: Mediator {
    
    var firstUser: ConcreteColleagueFirst?
    var secondUser: ConcreteColleagueSecond?
    
    func setFirstColleague(firstColleague: ConcreteColleagueFirst) {
        firstUser = firstColleague
    }
    
    func setSecondColleague(secondColleague: ConcreteColleagueSecond) {
        secondUser = secondColleague
    }
    
    func send(message: String, colleague: Colleague) {
        if colleague === firstUser {
            secondUser?.messageReceived(message: message)
        }
        
        if colleague === secondUser {
            firstUser?.messageReceived(message: message)
        }
    }
}
