struct Sort<T:Comparable>{
    
    typealias Element = T
    var dataArray:[Element]
    
    mutating func sortByInsert() {
        for i in 1..<dataArray.count {
            let key = dataArray[i]
            var j = i - 1
            while(j>=0 && dataArray[j] > key) {
                dataArray[j+1] = dataArray[j]
                j -= 1
            }
            dataArray[j+1] = key
        }
    }
}

var sort = Sort<Int>(dataArray: [1,7,5,3,4,0,22,9])
sort.sortByInsert()
