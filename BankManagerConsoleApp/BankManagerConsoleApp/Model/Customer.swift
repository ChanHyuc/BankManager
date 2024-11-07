struct Customer: CustomerCountProtocol {
    func createRandomCustomerCount() -> Int {
        return customerCount.createRandomCustomerCount()
    }
    
    var customerCount: CustomerCountProtocol
    let waitingNumber: String
    var business: BusinessType?
    
    init(customerCount: CustomerCountProtocol, waitingNumber: String, business: BusinessType? = nil) {
        self.customerCount = customerCount
        self.waitingNumber = waitingNumber
        self.business = business
    }
    
}
