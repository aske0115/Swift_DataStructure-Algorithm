class BubbleSort<T : Comparable>{
    typealias item = T
    
    var arr:[item]?
    
    func sortByBubble() -> [item]?{
        guard var array = arr else { return nil }
        
        if array.count == 1{
            return array
        }
        
        for i in 0..<array.count{
            for y in i..<array.count{
                if array[i] > array[y]{
                    let temp = array[y]
                    array[y] = array[i]
                    array[i] = temp
                }
            }
        }
        return array
    }
}
