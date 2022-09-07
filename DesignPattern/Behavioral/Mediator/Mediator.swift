//
//  Mediator.swift
//  DesignPattern
//
//  Created by Kevin Morales on 9/1/22.
//

import Foundation

protocol Mediator {
    func send(message: String, colleague: Colleague)
}
