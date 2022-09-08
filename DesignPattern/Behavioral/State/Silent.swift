//
//  Silent.swift
//  DesignPattern
//
//  Created by Kevin Morales on 9/8/22.
//

import Foundation

final class Silent: MobileAlertState {
    func alert(context: MobileAlertStateContext) {
        print("SILENT ALERT STATE!")
    }
}
