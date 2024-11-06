//
//  StubCustomerReceiver.swift
//  QueueTest
//
//  Created by ChanHyuc on 11/6/24.
//

import XCTest
@testable import BankManagerConsoleApp

class StubCustomerCount: CustomerCountProtocol {
    
    var totalCustomer = 0
    
    func createRandomCustomerCount() -> Int {
        return totalCustomer
    }
    
}
