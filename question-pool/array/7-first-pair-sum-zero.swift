// [1, 0, 2, -4, 3, -1, -2, 9] > (1, -1)

// we can use dynamic programming approach. we could either use bottom-up approach to fill out an n by n table where n is the length of the array. therefore the time complexity whould be O(n*n), or we could use top-down approach with memoazation.

func FirstZeroPair(input: [Int]) -> (Int, Int) {
    let n = input.count
    var table: [[Int]] = Array(repeating: Array(repeating: -1, count: n), count: n)
    

    
    for i in 0..<n {
        for j in (i+1)..<n {
            let sum = input[i] + input[j]
            table[i][j] = sum
            table[j][i] = sum
            if sum == 0{
                return (i, j)
            }
        }
    }
    
    return (-1, -1)
    
}

let input = [1, 0, 2, -4, 3, -7, -2, 9]
let result = FirstZeroPair(input: input)
print("result:  \(result)")
