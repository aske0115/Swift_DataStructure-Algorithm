protocol Stack{
    associatedtype Element
    
    mutating func push(_ element:Element)
    mutating func pop() -> Element?
    
    var peek:Element? { get }
    var isEmpty:Bool { get }
}

class Node<T>{
    var value:T
    var next:Node<T>?
    init(_ value:T) {
        self.value = value
    }
}

struct StackArray<T>:Stack {
    
    typealias Element = T
    var top:Node<Element>?
    
    var isEmpty: Bool {
        get{
            return top == nil
        }
    }
    
    var peek: Element? {
        get{
            return isEmpty ? nil : top?.value
        }
    }
    
    mutating func pop() -> Element? {
        let next = top
        top = next?.next
        return next?.value
        
    }
    
    mutating func push(_ element: Element) {
        let oldTop = top
        top = Node(element)
        top?.next = oldTop
    }
}


extension StackArray:CustomStringConvertible
{
    public var description: String {
        return String(describing: top?.value)
    }
}
