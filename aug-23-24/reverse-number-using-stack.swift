// Find reverse of number using Stack
// 1580 -> 851.

func ReverseNum(num: Int) -> Int {
    
    var numString: String = String(num)
    var stack1: [Character] = Array(numString)
    var stack2: [Character] = []
    let n = numString.count
    
    for _ in 0..<n {
        if let last = stack1.last{
            stack1.removeLast()
            stack2.append(last)

        }
    }
    
    for _ in 0..<n {
        if let first = stack2.first, first == "0" {
            stack2.removeFirst()
        }
    }
    
    numString = String(stack2)
    return Int(numString)!
}

let num = 123450600
let result = ReverseNum(num: num)
print("result:  \(result)")

//time complexity: O(n) space complexity O(n)
