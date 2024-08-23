//Check if a Given String is Palindrome or not without finding the reverse of the string.
// alsdgdsla
//solution one: two pointer technique: find the middle item and move toward both sides and check if the corresponding characters are identical
// solution two: dynamic programming: start from the extrnal part of the string. in other for "alsdgdsla" to be palindrome, we can say it must meet two conditions: first: "a" = "a", and second: "lsdgdsl" be palindrome. therefore, we can make a recursive function with base case is any string with one or zero character is palindrome. it is a top-down approach

func isPalindrome(input: inout String) -> Bool {
    
        if let first = input.first,  let last = input.last,  first == last{
            input = String(input.dropFirst().dropLast())
            return isPalindrome(input: &input)
        }else{
           if input.count < 2 {
               return true
           }else{
               return false
           }
        }
    
}
var input = "alsdgdsla"
let result = isPalindrome(input: &input)
print("is palindrome:   \(result)")

//time complexity: O(n), space complexity: O(1)
