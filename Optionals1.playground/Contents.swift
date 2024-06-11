import UIKit

//Optional return type it will return the value if there but if the value is

//func hatersStatus(weather : String)-> String?{
//    if weather == "Sunny"{
//        return nil
//    }else{
//        return "Hate"
//    }
//}
//let status = hatersStatus(weather: "love")
//
//
//
//
//func yearAlbumRelease(album : String)->Int?{
//    if album == "Tyler Swift" {return 2006}
//    if album == "Fearless" {return 2007}
//    return nil
//
//}
//let releasedAlbum = yearAlbumRelease(album: "Fearless")
//
//if let relasedalbum = releasedAlbum{
//    print(relasedalbum)
//}else{
//    print("function doesn't matches the condtion")
//}



//var item = ["Amit" , "Ajay" , "Amay"]
//
//func position(of string : String, in array : [String])->Int{
//    for i in 0..<array.count{
//        if array[i] == string{
//            return i
//        }
//    }
//    return 0
//}
//let postionOfAmit = position(of: "Amit", in: item)
//let postionOfAjay = position(of: "Ajay", in: item)
//let postionOfAmay = position(of: "Amay", in: item)
//let postionOfAjit = position(of: "ajit", in: item)
//
//
//func yearAlbumReleased(name : String)-> Int?{
//    if name == "Tyler Swift" { return 2006}
//    if name == "Fearless" { return 2007}
//    return nil
//}
//
//let name = yearAlbumReleased(name: "Fearless")
//if name == nil{
//    print("There is an error")
//}else{
//    print("album released in \(name!)")
//}


// switch case in function

//optional chaining :
//func albumReleasdInYear(year : Int)-> String?{
//    switch year{
//        case 2006 : return "Tyler Swift"
//        case 2007 : return "Fearless"
//        default : return nil
//    }
//}
//let album = albumReleasdInYear(year: 2006) ?? "Unknown"
//print(album)


// here we can see that
// to check the variable have the value or nil in that case we can use optional binding were bind the unwrapped value to the variable
// If the varibal is having optional value in that case it have value or no value so handle that case we can use optional chaining where optionals having value or not
// optional chaining madhe optional variable la optional value asel tar tya optional value madhe ek tar value asel nahitar nil asel so tya case madhe value optional ahe ka he tyalach optional chaining mantat

//struct Parts{
//    var name : String?
//    var price : Double?
//}
//
//class ComputerParts{
//
//    func findParts(name : String)-> Parts?{
//        if(name == "Keyboard"){
//            return Parts(name: "Samsung",  price: 4000)
//        }else if (name == "Mouse"){
//            return Parts(name: "Dell", price: 3000)
//        }
//        return nil
//    }
//
//}
//var obj1: Parts?
//var value = obj1?.price
//let object = ComputerParts()
////let moniter = object.findParts(name: "Keyboard")
//
//
//if let moniter = object.findParts(name: "Keyboard"){ // Optional binding
//    if let moniterPrice = moniter.price{
//        print(moniterPrice)
//    }
//}
//
//
//
//if let partPrice = object.findParts(name: "Keyboard")?.price{
//    print(partPrice)
//}else{
//    print("No part found")
//}
////print(moniter!)
//
//
//
////if first returns nil then Swift won’t try to uppercase it, and will set firstElement to nil immediately.
//var array = ["Amay", "Amit", "Ajay" , "Ankush"]
//let firstElement = array.first?.uppercased() // first? is the optional chaining
//print(firstElement) // it will print oprional value cause its optional chaining
//
//
//var name : String? = nil
//name == "Gajanan"
//if let unwrappedName = name{
//    print("\(unwrappedName.count) letters")
//}else{
//    print("Missing name")
//}

//func greet(_ name : String?){
//    guard let unwrppedName = name else{
//        print("You didnt provide a name")
//        return
//    }
//    print("Hello \(unwrppedName)")
//}
//
//greet("Gajanan")


// conversion from string to integer have 2 possibilities it may contain the value of may not contain the value in that case the value will be optional
//let str = "5"
//let num = Int(str)
//print(num)


// Implicitly unwrapped optionals exist because sometimes a variable will start life as nil, but will always have a value before you need to use it.
//let age : Int! = nil
//print(age)
//
//var agee : Int?
//var aged = agee ?? 80
//print(aged)

//func userName(for id : Int)-> String?{
//    if id == 1{
//        return "Gajanan"
//    }else{
//        return nil
//    }
//
//}
//let user = userName(for: 2) ?? "Unknown"
//print(user)

////Q1. Create a function which takes 2 input optional String parameters, and the return
//type is also optional String


//func optionalStringParamters(string1 : String? , string2 : String)-> String?{
//    var both = string1! + string2
//    return both
//}
//
//var res = optionalStringParamters(string1: "Gajanan ", string2: "Bidwai")
//print(res)


////Q2. Compare and return the string which is the longest in the above function


func compareStringAndReturnLongest(firstString : String? , secondString : String?)->String{
    
    let firstCount = firstString?.count ?? 0
    let secondCount = secondString?.count ?? 0
    
    if firstCount > secondCount{
        return "\(firstString) is biggest"
    }else if firstCount < secondCount{
        return "\(secondString!) is biggest"
    }else if firstString == secondString{
        return "Both string dont have value"
    }else{
        if firstString == nil && secondString == nil{
            return "Both are nil"
        }else{
            
        }
       
        return "Unknown"
    }
    
}
let res = compareStringAndReturnLongest(firstString: "" , secondString: nil)
print(res)
