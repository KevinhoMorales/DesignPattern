//
//  CardSingleton.swift
//  DesignPattern
//
//  Created by Kevin Morales on 8/19/22.
//

import Foundation

final class CardSingleton {
    static let shared: CardSingleton = {
        CardSingleton()
    }()
    private init(){}
    
    func doSomething() -> String {
        "Singleton"
    }
}
