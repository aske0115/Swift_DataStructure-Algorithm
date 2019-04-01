class mergeSort<T:Comparable>{
    
    typealias  item  = T
    
    func sortByMerge(_ array:[item]) ->[item]{
        guard array.count > 1 else { return array }
        let center = array.count / 2
        let leftArray = sortByMerge(Array(array[0..<center]))
        let rightArray = sortByMerge(Array(array[center..<array.count]))
        
        return merge((left: leftArray, right: rightArray)) ?? array
    }
    
    private func merge(_ data:(left:[item] , right:[item])) -> [item]?{
        var leftIndex = 0
        var rightIndex = 0
        
        var order = [item]()
        
        let left = data.left
        let right = data.right
        
        while leftIndex < left.count && rightIndex < right.count{
            
            if left[leftIndex] < right[rightIndex]{
                order.append(left[leftIndex])
                leftIndex += 1
            }else if left[leftIndex] > right[rightIndex]{
                order.append(right[rightIndex])
                rightIndex += 1
            }else{
                order.append(left[leftIndex])
                order.append(right[rightIndex])
                leftIndex += 1
                rightIndex += 1
            }
        }
        
        while leftIndex < left.count{
            order.append(left[leftIndex])
            leftIndex += 1
        }
        
        while rightIndex < right.count {
            order.append(right[rightIndex])
            rightIndex += 1
        }
        return order
    }
}
