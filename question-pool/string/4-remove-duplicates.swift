//4- Remove duplicate chars from the input string.


func removeDuplicates(input: String) -> String{
    var seenChars = Set<Character>()
    var inputArray = Array(input)
    var index = 0
    for  char in inputArray{
       if !seenChars.contains(char){
           inputArray[index] = char
           index += 1
           seenChars.insert(char)
       }
       
    }
    
    return String(inputArray[0..<index])
}

let input = "fggksceeeeertpdf"
let output = removeDuplicates(input: input)
print("output:  \(output)")

//time complexity: O(n).  space complexity: O(n)
