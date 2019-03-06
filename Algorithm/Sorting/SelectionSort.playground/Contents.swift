struct Sort<T:Comparable>{
    
    typealias Element = T
    
    var dataArray:[T]
    
    mutating func sortBySelection() {
        
        // 0 부터 마지막 전까지 루프..앞을 비교하는 루프
        for i in  0..<dataArray.count - 1 {
            var isMinChanged:Bool = false
            // 가장 작은 값을 가지고있는 배열의 인덱스 저장
            var min = i
            
            // 0번째 값부터 시작해서 배열의 끝까지 탐색하여 가장 작은 값의 인덱스를 탐색
            for j in i+1..<dataArray.count {
    
                if dataArray[min] > dataArray[j] {
                    min = j
                    isMinChanged = true
                }
            }
            
            // 이너루프가 종료되면 min 변수에는 가장 작은 수의 인덱스가 설정됨.
            // 현재 위치하고 있는 위치에 가장 작은 수 Swap
            if (isMinChanged) {
                let temp = dataArray[i]
                dataArray[i] = dataArray[min]
                dataArray[min] = temp
            }
        }
    }
}

var sort = Sort<Int>(dataArray: [5,3,22,86,99,32,4,1,101,243,53])
sort.sortBySelection()




