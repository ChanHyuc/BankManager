//
//  MockTest.swift
//  QueueTest
//
//  Created by ChanHyuc on 11/8/24.
//

import Foundation

class MockBank {
    var processTime: CFAbsoluteTime?
    
    func reportResult(totalCustomer: Int, processTime: CFAbsoluteTime) -> String {
        return ""
    }
    
    var open_totalCustomer: Int = 0
    
    func open(totalCustomer: Int) {
        self.open_totalCustomer = totalCustomer
    }
}
