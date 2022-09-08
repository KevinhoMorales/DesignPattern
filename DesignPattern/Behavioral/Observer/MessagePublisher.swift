//
//  MessagePublisher.swift
//  DesignPattern
//
//  Created by Kevin Morales on 9/7/22.
//

import Foundation

final class MessagePublisher: Subject {
    var observers = [Observer]()
    
    func attach(o: Observer) {
        observers.append(o)
    }
    
    func detacht(o: Observer) {
        if let index = observers.firstIndex(where: {$0 as AnyObject === o as AnyObject} ) {
            observers.remove(at: index)
        }
    }
    
    func notifyUpdate(trafficLight: TrafficLight) {
        observers.forEach {$0.update(trafficLight: trafficLight)}
    }
}
