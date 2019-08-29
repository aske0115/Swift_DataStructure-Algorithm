/**
 Given a binary tree, return the bottom-up level order traversal of its nodes' values. (ie, from left to right, level by level from leaf to root).
 
 For example:
 Given binary tree [3,9,20,null,null,15,7],
 
 3
 / \
 9  20
 /  \
 15   7
 return its bottom-up level order traversal as:
 
 [
 [15,7],
 [9,20],
 [3]
 ]
 **/



 public class TreeNode {
     public var val: Int
     public var left: TreeNode?
     public var right: TreeNode?
     public init(_ val: Int) {
         self.val = val
         self.left = nil
         self.right = nil
     }
 }

class Solution {
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        var ret = [[Int]]()
        guard root != nil else { return ret }
        var queue = [TreeNode]()
        queue.append(root!)
        
        while(!queue.isEmpty) {
            var list = [Int]()
            let count = queue.count
            for _ in 0..<count {
                let node = queue.removeFirst()
                list.append(node.val)
                if(node.left != nil) { queue.append(node.left!)}
                if(node.right != nil) { queue.append(node.right!)}
            }
            
            ret.insert(list,at:0)
        }
        return ret
    }
}
