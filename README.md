# Swift_DataStructure And Algorithm
  
데이터 구조 및 알고리즘 연습


***STACK

```swift

protocol Stack{
    associatedtype Element
    
    mutating func push(_ element:Element)
    mutating func pop() -> Element?
    
    var peek:Element? { get }
    var isEmpty:Bool { get }
    
}

struct StackArray<T>:Stack{
    
    typealias Element = T
    var stack = Array<Element>()
    
    var isEmpty: Bool{
        get{
            return stack.isEmpty
        }
    }
    
    
    var peek: Element?{
        get{
            return isEmpty ? nil : stack.last
        }
    }
    mutating func pop() -> Element? {
        return  isEmpty ? nil : stack.popLast()
    }
    
    mutating func push(_ element: Element) {
        self.stack.append(element)
    }
    
}


extension StackArray:CustomStringConvertible
{
    public var description: String {
        return String(describing: stack)
    }
}

```
