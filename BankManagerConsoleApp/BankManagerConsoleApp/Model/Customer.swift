struct Customer {
    let waitingNumber: String
    var business: BusinessType?
    
    init(waitingNumber: String, business: BusinessType? = nil) {
        self.waitingNumber = waitingNumber
        self.business = business
    }
}
