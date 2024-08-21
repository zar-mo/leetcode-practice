/*
Given an integer array nums sorted in non-decreasing order, remove some duplicates in-place such that each unique
element appears at most twice. The relative order of the elements should be kept the same.
*/

func removeDup(nums: inout [Int]) -> (Int, [Int]) {
    var lastSeenNumber = 0
    var count = 0
    var lastIndex = 0
    var k = 0
    
    
    for  num in nums {
        if num == lastSeenNumber{
            count += 1
        }else{
            lastSeenNumber = num
            count = 1
        }
        if count <= 2{
            nums[lastIndex] = num
            lastIndex += 1
            k += 1
        }
    }
    
    return (k, nums)
}


var nums = [1,1,1,2,2,3, 4, 4, 4, 4, 4, 5, 6, 6, 6]
let output = removeDup(nums : &nums)
print("result:   \(output)")
