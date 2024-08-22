//Find out the common characters from an array

let arr = ["cool","lock","cook"]

func findCommonChar(arr: [String]) ->  Set<Character> {
    var commonChars =  Set<Character>()
    guard let firstWord = arr.first else { return commonChars }
        
        for char in firstWord {
            if !commonChars.contains(char){
            var isCommon: Bool = true
            for word in arr{
                if !word.contains(char){
                    isCommon = false
                    break
                }
            }
            if isCommon{
                commonChars.insert(char)
            }
            }
        }
       
    
    print("common Characters: \(commonChars)")
    return commonChars
}

findCommonChar(arr: arr)

//time complexity O(n)
//space complexity O(1)
