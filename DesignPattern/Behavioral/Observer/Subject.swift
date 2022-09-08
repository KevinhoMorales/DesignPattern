//
//  Subject.swift
//  DesignPattern
//
//  Created by Kevin Morales on 9/7/22.
//

import Foundation

protocol Subject {
    func attach(o: Observer)
    func detacht(o: Observer)
    func notifyUpdate(trafficLight: TrafficLight)
}
