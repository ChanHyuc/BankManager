import Foundation

final class MainConsole: CustomerCountProtocol {
    func createRandomCustomerCount() -> Int {
        return CustomerCount().createRandomCustomerCount()
    }
    
    var linkedList: LinkedList = LinkedList<Any>()
    var serviceTime: Double = 0.0
    
    func run() {
        while true {
            
            self.printMenu()
            let input = readLine()!
            
            switch input {
            case "1":
                openBank()
            case "2":
                break
            default:
                let message = "잘못 입력하셨습니다."
                print(message)
            }
                
            
        }
        
    }
    
    private func openBank() {
        for num in 1...createRandomCustomerCount() {
            self.linkedList.enqueue(data: num)
        }
        
        DispatchQueue.global().asyncAfter(deadline: .now() + self.serviceTime) {
            self.processCustomers()
        }
    }
    
    private func processCustomers() {
        let delay = 0.7
        
        for _ in 1...createRandomCustomerCount() {
            if let customer = linkedList.dequeue() {
                serviceTime += delay
                
                DispatchQueue.global().asyncAfter(deadline: .now() + serviceTime) {
                    print("\(customer)번 고객 업무 시작")
                    print("\(customer)번 고객 업무 종료")
                }
            }
        }
        
        DispatchQueue.global().asyncAfter(deadline: .now() + serviceTime) {
            print("업무가 마감되었습니다. 오늘 업무를 처리한 고객은 총 \(self.createRandomCustomerCount())명이며, 총 업무시간은 \(String(format: "%.2f", self.serviceTime)) 초 입니다.")
        }
    }
    
    
    
    private func printMenu() {
        print("""
        1: 은행 개점
        2: 종료
        입력 :
        """, terminator: " ")
    }
    
}

var runs = MainConsole()
runs.run()



//                dispatchGroup.notify(queue: .main) {
//                    print("업무가 마감되었습니다. 오늘 업무를 처리한 고객은 총 \(self.customerCount)명이며, 총 업무시간은 \(String(format: "%.2f", self.serviceTime)) 초 입니다.")
//                }
