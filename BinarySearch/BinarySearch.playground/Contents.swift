struct Search<T:Comparable>{
    
    typealias Element = T
    var arr:[Element]
    
    func binarySearch(_ value:Element) ->Int{
        var l = 0
        let len = arr.count - 1
        var r = len
        
        while(l<=r){
            let middle = l + (r - l) / 2
            print("value = \(value)\nmiddle = \(arr[middle])")
            if(value == arr[middle]){
                return middle
            } else if (value < arr[middle]){
                r = middle - 1
            } else{
                l = middle + 1
            }
        }
        return -1
    }
}


let search = Search<Int>(arr: [1,2,3,4,5,6,7,8,9,10,15,17,33])

print(search.binarySearch(17))

