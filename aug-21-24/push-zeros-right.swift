
//given an array of integers, rearrange it in such a way that all of the zeros positioned in the right side of 
//the array without changing the order of non-zero elements. the algorithm must be done in-place meaning that
// no extra space.


func rearrangeZeros(nums: inout [Int]) -> [Int] {
    var ptr1 = 0
    var ptr2 = 1
    let n = nums.count
    
    while ptr2 < n && ptr1 < n{
     
        if nums[ptr1] == 0{
            while ptr2 < n && nums[ptr2] == 0{
                ptr2 += 1
            }
            if ptr2 < n {
                nums.swapAt(ptr1, ptr2)
                ptr1 += 1
            }
        } else{
            ptr1 += 1
            ptr2 += 1
        }
        print("ptr1, ptr2, nums:   \(ptr1) , \(ptr2). \(nums)")
        
        
        
    }
    return nums
}

/*
var nums = [0, 1, 0, 3, 12, 0, 0, 0, 8, 7, 9]

ptr1, ptr2, nums:   1 , 1. [1, 0, 0, 3, 12, 0, 0, 0, 8, 7, 9]
ptr1, ptr2, nums:   2 , 3. [1, 3, 0, 0, 12, 0, 0, 0, 8, 7, 9]
ptr1, ptr2, nums:   3 , 4. [1, 3, 12, 0, 0, 0, 0, 0, 8, 7, 9]
ptr1, ptr2, nums:   4 , 8. [1, 3, 12, 8, 0, 0, 0, 0, 0, 7, 9]
ptr1, ptr2, nums:   5 , 9. [1, 3, 12, 8, 7, 0, 0, 0, 0, 0, 9]
ptr1, ptr2, nums:   6 , 10. [1, 3, 12, 8, 7, 9, 0, 0, 0, 0, 0]
ptr1, ptr2, nums:   6 , 11. [1, 3, 12, 8, 7, 9, 0, 0, 0, 0, 0]
result: >>>> [1, 3, 12, 8, 7, 9, 0, 0, 0, 0, 0]
*/

