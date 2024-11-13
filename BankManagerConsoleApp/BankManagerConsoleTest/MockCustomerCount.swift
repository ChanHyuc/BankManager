import XCTest

final class MockCustomerCount: CustomerCountProtocol {
    var mockCount: Int // 테스트 시 반환할 값
    
    init(mockCount: Int) {
        self.mockCount = mockCount
    }
    
    func createRandomCustomerCount() -> Int {
        return mockCount
    }
}

final class CustomerCountTests: XCTestCase {
    
    func testCreateRandomCustomerCount() {
        let expectedCount = 15
        let mockCustomerCount = MockCustomerCount(mockCount: expectedCount)
        
        let result = mockCustomerCount.createRandomCustomerCount()
        
        XCTAssertEqual(result, expectedCount, "Fault Test!")
    }
}
