//Find largest, second largest and third largest number from the array
let arr = [23,56,7,77,84,92,36,12,34,43]



func findThreeLargest(arr: [Int]) -> (Int, Int, Int) {
    
    var largest: Int = Int.min
    var secondLargest: Int = Int.min
    var thirdLargest: Int = Int.min
    var result : (Int, Int, Int) 
    
    for num in arr{
        if largest < num{
            thirdLargest = secondLargest
            secondLargest = largest
            largest = num
        }else if secondLargest < num {
            thirdLargest = secondLargest
            secondLargest = num
        }else if thirdLargest < num{
            thirdLargest = num
        }
    }
    result = (largest, secondLargest, thirdLargest)
    print("result: \(result)")
    return result
}

findThreeLargest(arr: arr)
