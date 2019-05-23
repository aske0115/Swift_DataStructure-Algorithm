
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
 
class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var node = head
        var totalCount = 0
        
        while(node != nil) {
            totalCount += 1
            node = node?.next
        }
        
        node = head
        for _ in 0..<totalCount / 2 {
            node = node?.next
        }
        
        return node
    }
}

func printListNode(_ list:ListNode?) {
    var lists = list
    while(lists != nil) {
        if let li = lists {
            print(li.val)
        }
        lists = lists?.next
    }
}

let sol = Solution()
let listNode = ListNode(1)
listNode.next = ListNode(2)
listNode.next?.next = ListNode(3)
listNode.next?.next?.next = ListNode(4)
listNode.next?.next?.next?.next = ListNode(5)
listNode.next?.next?.next?.next?.next = ListNode(6)

printListNode(sol.middleNode(listNode)!)


