/*
 Given a 32-bit signed integer, reverse digits of an integer.
 
 Example 1:
 
 Input: 123
 Output: 321
 Example 2:
 
 Input: -123
 Output: -321
 Example 3:
 
 Input: 120
 Output: 21
 Note:
 Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
*/

import Foundation

class Solution {
    
    func reverse(_ x: Int) -> Int {
        let negative:Int = x < 0 ? -1 : 1
        
        let reverseString:String = String(x * negative)
        
        let reverse = Int(reverseString.map{$0}.reduce("") {"\($1)" + $0})! * negative
        
        return (reverse < Int32.min || reverse > Int32.max) ? 0 : reverse
    }
    
    
    func reverse2(_ x: Int) -> Int {
        
        var origin = x
        var reverse = 0
        
        while(origin != 0) {
            let data = origin % 10
            reverse = reverse * 10 + data
            
            if reverse < Int32.min || reverse > Int32.max {
                return 0
            }
            origin /= 10
        }
        
        return reverse
    }
}


let sol = Solution()

sol.reverse(-4321)
sol.reverse2(-432120349023423)
