public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var returnNode:ListNode?
        
        guard let l1 = l1 , let l2 = l2 else { return nil }
        var flist:ListNode? = l1
        var slist:ListNode? = l2
        
        var upper = 0
        while(flist != nil) {
            if returnNode == nil {
                returnNode = ListNode((l1.val + l2.val + upper) % 10)
                upper = (l1.val + l2.val + upper) / 10
                slist = slist?.next
                flist = flist?.next
                continue
            }
            if slist != nil {
                var node = returnNode
                while(node?.next != nil) {
                    node = node?.next
                }
                
                node?.next = ListNode((flist!.val + slist!.val + upper) % 10)
                upper = (flist!.val + slist!.val + upper) / 10
                slist = slist?.next
                flist = flist?.next
                
            }else {
                var node = returnNode
                while(node?.next != nil) {
                    node = node?.next
                }
                node?.next = ListNode((flist!.val + upper) % 10)
                upper = (flist!.val + upper) / 10
                flist = flist?.next
                
            }
        }
        
        if slist != nil {
            while(slist != nil) {
                var node = returnNode
                while(node?.next != nil) {
                    node = node?.next
                }
                node?.next = ListNode((slist!.val + upper) % 10)
                
                upper = (slist!.val + upper) / 10
                slist = slist?.next
                
            }
        }
        if upper > 0 {
            var node = returnNode
            while(node?.next != nil) {
                node = node?.next
            }
            node?.next = ListNode(upper)
        }
        return returnNode
    }
}


let sol = Solution()
var nodes = ListNode(2)
nodes.next = ListNode(4)
nodes.next?.next = ListNode(3)

var nodes2 = ListNode(5)
nodes2.next = ListNode(6)
nodes2.next?.next = ListNode(4)

var nod = sol.addTwoNumbers(nodes, nodes2)
