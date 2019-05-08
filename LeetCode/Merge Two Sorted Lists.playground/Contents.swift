public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
 
class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1  == nil {
            if l2 != nil {
                return l2
            } else {
                return nil
            }
        } else if l2 == nil {
            return l1
        }
        
        if let l1 = l1, let l2 = l2 {
            var l1temp:ListNode?
            var l2temp:ListNode?
            
            
            var headNode:ListNode
            
            if l1.val > l2.val {
                headNode = ListNode(l2.val)
                l2temp = l2.next
                l1temp = l1
            } else {
                headNode = ListNode(l1.val)
                l1temp = l1.next
                l2temp = l2
            }
            
            
            var tailNode = headNode.next
            
            while(true) {
                if l1temp == nil && l2temp == nil {
                    break
                }
                var newNode:ListNode?
                //둘다 값이 있을때
                if let val = l1temp?.val, let val2 = l2temp?.val{
                    if val < val2 {
                        newNode = ListNode(val)
                        l1temp = l1temp?.next
                    } else {
                        newNode = ListNode(val2)
                        l2temp = l2temp?.next
                    }
                } else if let val = l1temp?.val {
                    newNode = ListNode(val)
                    l1temp = l1temp?.next
                } else if let val = l2temp?.val{
                    newNode = ListNode(val)
                    l2temp = l2temp?.next
                }
                
                if tailNode == nil {
                    tailNode = newNode
                    headNode.next = tailNode
                } else {
                    tailNode?.next = newNode
                    tailNode = tailNode?.next
                }
            }
            return headNode
        }
        return nil
    }
}

var solution = Solution()
solution.mergeTwoLists(ListNode(3), ListNode(1))
