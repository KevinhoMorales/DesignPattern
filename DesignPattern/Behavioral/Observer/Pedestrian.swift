//
//  Pedestrian.swift
//  DesignPattern
//
//  Created by Kevin Morales on 9/7/22.
//

import Foundation

final class Pedestrian: Observer {
    func update(trafficLight: TrafficLight) {
        if trafficLight.status as AnyObject === "CAR_RED" as AnyObject {
            print("PASS PEDESTRIAN! TRAFFIC LIGHT GREEN")
            return
        }
        print("STOP PEDESTRIAN! TRAFFIC LIGHT RED")
    }
}
