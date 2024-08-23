// Remove the duplicate from this array and sort it in ascending order
var input = [2,4,5,6,7,12,14,16,17,34,45,67,98,65,34,23,45,16]

func removeDuplocates(input: inout [Int]) -> [Int] {
    
    var seenNum = Set<Int>()
    var index: Int = 0
    for num in input{
        if !seenNum.contains(num){
            input[index] = num
            index += 1
            seenNum.insert(num)
        }
    }
    return Array(input[0..<index])
}


let result = mergeSort(removeDuplocates(input: &input))
print("result: \(result)")



func mergeSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }

    let middleIndex = array.count / 2
    let leftArray = Array(array[0..<middleIndex])
    let rightArray = Array(array[middleIndex..<array.count])

    let sortedLeftArray = mergeSort(leftArray)
    let sortedRightArray = mergeSort(rightArray)

    return merge(sortedLeftArray, sortedRightArray)
}

func merge(_ left: [Int], _ right: [Int]) -> [Int] {
    var leftIndex = 0
    var rightIndex = 0
    var resultArray: [Int] = []

    while leftIndex < left.count && rightIndex < right.count {
        if left[leftIndex] < right[rightIndex] {
            resultArray.append(left[leftIndex])
            leftIndex += 1
        } else {
            resultArray.append(right[rightIndex])
            rightIndex += 1
        }
    }

    while leftIndex < left.count {
        resultArray.append(left[leftIndex])
        leftIndex += 1
    }

    while rightIndex < right.count {
        resultArray.append(right[rightIndex])
        rightIndex += 1
    }

    return resultArray
}

