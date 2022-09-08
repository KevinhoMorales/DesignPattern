//
//  Vibration.swift
//  DesignPattern
//
//  Created by Kevin Morales on 9/8/22.
//

import Foundation

final class Vibration: MobileAlertState {
    func alert(context: MobileAlertStateContext) {
        print("VIBRATION ALERT STATE!")
    }
}
