//Count the number of occurrences of each char in the input string.

func countOccurances(input: String) -> [Character: Int]{
    var counter: [Character: Int] = [:]
    
    for char in input{
        if var count = counter[char]{
            count += 1
            counter[char] = count
        }else {
            counter[char] = 1
        }
    }
    print("number of occurance of each character: \(counter)")
    return counter
}

let input = "fggksceeeeertpdf"
countOccurances(input: input)

//time complexity: O(n).  space complexity: O(1)
// number of occurance of each character: ["f": 2, "d": 1, "t": 1, "c": 1, "s": 1, "p": 1, "r": 1, "e": 5, "k": 1, "g": 2]
