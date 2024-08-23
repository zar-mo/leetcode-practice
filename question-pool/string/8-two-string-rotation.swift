// 8- Check if strings are rotations of each other or not

func areRotations(str1: String, str2: String) -> Bool {
    let n = str1.count
    let m = str2.count
    
    guard  n == m else {return false}
    
    var result: Bool = true
    let temp = str2 + str2
    if !temp.contains(str1){
        result = false
    }

    
    print("result:  \(result)")
    return result
}


let str1 = "abc"
let str2 = "cab"   
areRotations(str1: str1, str2: str2)
