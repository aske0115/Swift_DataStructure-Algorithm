class Solution {
    
    struct Stack<String> {
        var value:String
    }
    
    private var brakets:[Stack<String>] = []
    
    let openBrackets:[String] = ["(","{","["]
    let closeBrackets:[String] = [")","}","]"]
    func isValid(_ s: String) -> Bool {
        let strings = s.map { String($0) }
        for b in strings {
            switch(b) {
            case "(" :
                fallthrough
            case "[" :
                fallthrough
            case "{" :
                brakets.append(Stack<String>(value: b))
            //                ?fallthrough
            case ")":
                if brakets.last?.value == "(" {
                    brakets.removeLast()
                }else {
                    return false
                }
            case "}":
                if brakets.last?.value == "{" {
                    brakets.removeLast()
                }else {
                    return false
                }
            case "]":
                if brakets.last?.value == "[" {
                    brakets.removeLast()
                }else {
                    return false
                }
            default:
                return false
            }
        }
        return brakets.count == 0
    }
}


var sol = Solution()
sol.isValid("(])")
