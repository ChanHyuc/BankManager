import Foundation

struct CustomerReceiver: Receivable {
    func receiveCustomer() -> Int {
        let customerRange: ClosedRange<Int> = 10...30
        let totalCustomer = Int.random(in: customerRange)
        return totalCustomer
    }
}

protocol Receivable {
    func receiveCustomer() -> Int
}
