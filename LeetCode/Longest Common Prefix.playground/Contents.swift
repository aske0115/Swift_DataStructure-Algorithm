/**
 Write a function to find the longest common prefix string amongst an array of strings.
 
 If there is no common prefix, return an empty string "".
 
 Example 1:
 
 Input: ["flower","flow","flight"]
 Output: "fl"
 Example 2:
 
 Input: ["dog","racecar","car"]
 Output: ""
 Explanation: There is no common prefix among the input strings.
 Note:
 
 All given inputs are in lowercase letters a-z.
*/

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count > 0 else { return ""}
        
        if strs.count == 1 {
            return strs.first!
        }
        var strings:[String] = strs.sorted {$0.count < $1.count}
        var minString:String =  strings.removeFirst()
        
        while(minString.count != 0) {
            var hasPrefix:Bool = true
            for i in strings {
                hasPrefix = i.hasPrefix(minString)
                if hasPrefix == false {
                    break
                }
            }
            if hasPrefix != true {
                minString.removeLast()
                continue
            }
            return minString
        }
        
        return  ""
    }
}

Solution().longestCommonPrefix(["flower","flow","flight"])
Solution().longestCommonPrefix(["dog","racecar","car"])
