struct CustomerCount: CustomerCountProtocol {
    func createRandomCustomerCount() -> Int {
        let randomCount: ClosedRange<Int> = 10...30
        let customerCount: Int = Int.random(in: randomCount)
        return customerCount
    }
}

protocol CustomerCountProtocol {
    func createRandomCustomerCount() -> Int
}
