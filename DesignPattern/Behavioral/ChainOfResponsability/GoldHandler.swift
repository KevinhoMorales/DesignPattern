//
//  GoldHandler.swift
//  DesignPattern
//
//  Created by Kevin Morales on 8/19/22.
//

import Foundation

final class GoldHandler: ApprovedLoanHandler {
    
    private var next: ApprovedLoanHandler?
    
    func setNext(handler: ApprovedLoanHandler) {
        next = handler
    }
    
    func getNext() -> ApprovedLoanHandler {
        return next!
    }
    
    func creditCardRequest(totalLoan: Int) {
        if totalLoan <= 10000 {
            print("CREDIT CARD GOLD HANDLER!")
            return
        }
        next!.creditCardRequest(totalLoan: totalLoan)
    }
}
