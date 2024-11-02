import Foundation

final class MainConsole {
    var linkedList = LinkedList<Any>()
    var serviceTime = 0.0
    var customerCount = Int.random(in: 10...30)
    let dispatchGroup = DispatchGroup()
    
    
    func run() {
        while true {
            print("""
      1: 은행 개점
      2: 종료
      입력 :
      """, terminator: " ")
            let input = readLine()!
            
            if input == "1" {
                for num in 1...customerCount {
                    linkedList.enqueue(data: num)
                }
                
//                for _ in 1...customerCount {
//                    if let customer = linkedList.dequeue() {
//                        print("\(customer)번 고객 업무 시작")
//                        serviceTime += 0.7
//                        usleep(UInt32(serviceTime * 1_000_000))
//                        print("\(customer)번 고객 업무 종료")
//                    }
//                }
                
                processCustomers()
                
//                dispatchGroup.notify(queue: .main) {
//                    print("업무가 마감되었습니다. 오늘 업무를 처리한 고객은 총 \(self.customerCount)명이며, 총 업무시간은 \(String(format: "%.2f", self.serviceTime)) 초 입니다.")
//                }
                
//                DispatchQueue.main.asyncAfter(deadline: .now() + serviceTime) {
//                    print("업무가 마감되었습니다. 오늘 업무를 처리한 고객은 총 \(self.customerCount)명이며, 총 업무시간은 \(String(format: "%.2f", self.serviceTime)) 초 입니다.")
//                }
                
            }
            
            if input == "2" {
                break
            }
            
        }
    }
    
    private func processCustomers() {
        let delay = 0.7
        for _ in 1...customerCount {
            if let customer = linkedList.dequeue() {
                serviceTime += delay
                self.dispatchGroup.enter()
                
                DispatchQueue.global().asyncAfter(deadline: .now() + serviceTime) {
                    print("\(customer)번 고객 업무 시작")
                    print("\(customer)번 고객 업무 종료")
                }
                self.dispatchGroup.leave()
            }
        }
    }
}

var runs = MainConsole()
runs.run()

