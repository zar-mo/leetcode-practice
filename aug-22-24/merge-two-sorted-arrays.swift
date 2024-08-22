//We have two sorted arrays, have merge them together and remove the duplicates.

var arr1 = [1, 1,  4, 5, 8, 9]
var arr2 = [3, 7, 8, 9, 12, 17]


func uniqueAppend(result: inout [Int], num: Int){
    if !result.contains(num) {
            result.append(num)
            }
}

func uniqueMerge(arr1: inout [Int], arr2: inout [Int]) -> [Int] {
    var result: [Int] = []
    
    while !arr1.isEmpty && !arr2.isEmpty {
        if let arr1First = arr1.first, let arr2First = arr2.first {
            if arr1First < arr2First {
                uniqueAppend(result: &result, num: arr1First)
                arr1.removeFirst()
            } else if arr1First > arr2First {
                uniqueAppend(result: &result, num: arr2First)
                arr2.removeFirst()
            } else {
                uniqueAppend(result: &result, num: arr1First)
                arr1.removeFirst()
                arr2.removeFirst()
            }
        }
    }
    
    // Append remaining elements uniquely
    while let num = arr1.first {
        uniqueAppend(result: &result, num: num)
        arr1.removeFirst()
    }
    
    while let num = arr2.first {
        uniqueAppend(result: &result, num: num)
        arr2.removeFirst()
    }
    
    print("result:    \(result)")
    return result
}




uniqueMerge(arr1: &arr1, arr2: &arr2)
