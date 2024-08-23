//6- Find first non-repeating character in the string


func firstUniqueChar(input: String) -> Character? {
    var uniqueChars: [Character] = []
    
    for char in input{
        if uniqueChars.contains(char){
            uniqueChars = uniqueChars.filter{$0 != char}
        }else{
            uniqueChars.append(char)
        }
        
    }
    return uniqueChars.first
}

let input = "asjjyuaksyopdu"
let output = firstUniqueChar(input: input)
if let output = output{
     print("result:  \(output)")
}else{
    print("no result")
}
