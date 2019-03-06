protocol Queue {
    associatedtype Element
    mutating func enqueue(_ element:Element) -> Bool
    mutating func dequeue() ->Element?
    
    var isEmpty:Bool { get }
    var peek:Element? { get }
    
}


extension arrayQueue:CustomStringConvertible
{
    public var description: String {
        return String(describing: queue)
        
    }
}

struct arrayQueue<T>:Queue {
    
    typealias Element = T
    var queue = Array<Element>()
    var isEmpty: Bool{
        
        get {
            return queue.isEmpty
        }
    }
    
    public var peek: Element?{
        get{
            return queue.first
        }
    }
    
    mutating func enqueue(_ element: Element) -> Bool {
        self.queue.append(element)
        return true
    }
    
    mutating func dequeue() -> Element? {
        return isEmpty ? nil : queue.removeFirst()
    }
}
