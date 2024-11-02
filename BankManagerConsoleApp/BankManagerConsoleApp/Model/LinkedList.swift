// 여러개의 데이터를 받기 위해 제네릭<T>로 생성
// struct는 값의 변경 될 때 마다 노드가 다시 복사되어 메모리에 올라오기 때문에 Stack 메모리 공간을 많이 사용함
final class Node<T> {
    let data: T
    var next: Node?
    
    init(data: T) {
        self.data = data
    }
    
}

struct LinkedList<T> {
    private var head: Node<T>?
    private var tail: Node<T>?
    private var count: Int = 0
    
    mutating func enqueue(data: T) {
        let node = Node(data: data)
        
        if head == nil {
            head = node
            tail = node
        } else {
            tail?.next = node
            tail = node
        }
        
        count += 1
    }
    
    mutating func dequeue() -> T? {
        guard let node = head else { return nil }
        
        head = head?.next
        
        if head == nil {
            tail = nil
        }
        count -= 1
        
        return node.data
    }
    
    func peek() -> T? {
        return head?.data
    }
    
    mutating func clear() {
        head = nil
        tail = nil
        count = 0
    }
    
    func isEmpty() -> Bool {
        return count == 0
    }
}

