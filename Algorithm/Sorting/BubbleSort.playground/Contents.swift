class BubbleSort<T : Comparable> {
    typealias item = T
    
    var arr:[item]?
    
    func sortByBubble() -> [item]? {
        guard var array = arr else { return nil }
        
        if array.count == 1 {
            return array
        }
        
        for i in 0..<array.count {
            for y in 0..<array.count - 1 - i {
                if array[y] > array[y+1] {
                    let temp = array[y]
                    array[y] = array[y+1]
                    array[y+1] = temp
                }
            }
        }
        return array
    }
}


let bubble = BubbleSort<Int>()
bubble.arr = [20,40,10,30,50,25]
bubble.sortByBubble()

