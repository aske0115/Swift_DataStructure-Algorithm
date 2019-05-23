class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        //Use HashMap
        var sum:Dictionary<String,Int> = [:]
        
        //key = value
        //value = index
        for i in 0..<nums.count {
            let current = nums[i]
            if sum.keys.contains(String(target - current)){
                return [sum[String(target - current)]! , i]
            } else {
                sum[String(current)] = i
            }
        }
        return []
    }
}

let solution = Solution()
solution.twoSum([2,7,11,15], 9)
