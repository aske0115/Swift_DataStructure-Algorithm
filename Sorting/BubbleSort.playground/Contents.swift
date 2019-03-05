class BubbleSort<T : Comparable>{
    typealias item = T
    
    var arr:[item]?
    
    func sortByBubble() -> [item]?{
        guard var array = arr else { return nil }
        
        if array.count == 1{
            return array
        }
        
        for i in 0..<array.count - 1{
            print("outer loop = \(array[i])[\(i)]")
            for y in i..<array.count{
                print("inner loop = \(array[y])[\(y)]")
                if array[i] > array[y]{
                    let temp = array[y]
                    array[y] = array[i]
                    array[i] = temp
                }
            }
            print("sortedArray = \(array)")
        }
        return array
    }
}


let bubble = BubbleSort<String>()
bubble.arr = ["20","40","10","30","50","25"]
bubble.sortByBubble()

