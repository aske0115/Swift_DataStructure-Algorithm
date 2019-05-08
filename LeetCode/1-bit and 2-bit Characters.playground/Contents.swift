class Solution {
    func isOneBitCharacter(_ bits: [Int]) -> Bool {
        var result = bits
        if result.count == 0 {
            return false
        }

        while(result.count >= 2) {
            if let first = result.first {
                for _ in 0..<first + 1 {
                    result.removeFirst()
                }
                
            } else {
                return false
            }
        }
        return result.count == 1 && result.last! == 0
    }
}


var sol = Solution()
sol.isOneBitCharacter([0,1,0])
