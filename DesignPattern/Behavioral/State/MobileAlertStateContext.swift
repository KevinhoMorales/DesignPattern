//
//  MobileAlertStateContext.swift
//  DesignPattern
//
//  Created by Kevin Morales on 9/8/22.
//

import Foundation

final class MobileAlertStateContext {
    var currentState: MobileAlertState = Sound()
    
    func setState(state: MobileAlertState) {
        currentState = state
    }
    
    func alert() {
        currentState.alert(context: self)
    }
}
