//
//  Car.swift
//  DesignPattern
//
//  Created by Kevin Morales on 9/7/22.
//

import Foundation

final class Car: Observer {
    func update(trafficLight: TrafficLight) {
        if trafficLight.status as AnyObject === "CAR_RED" as AnyObject {
            print("STOP CAR! TRAFFIC LIGHT RED")
            return
        }
        print("PASS CAR! TRAFFIC LIGHT GREEN")
    }
}
