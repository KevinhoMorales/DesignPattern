//
//  ApprovedLoanHandler.swift
//  DesignPattern
//
//  Created by Kevin Morales on 8/19/22.
//

import Foundation

protocol ApprovedLoanHandler {
    func setNext(handler: ApprovedLoanHandler)
    func getNext() -> ApprovedLoanHandler
    func creditCardRequest(totalLoan: Int)
}
