import UIKit

///SUBSCRIPTING : Without using method and object we can able to acces the information from class, struct and enum

struct CountingNumber{
    var countingNumber = ["One", "Two", "Three", "Four", "Five"]
    
    subscript(index : Int)-> String{
        return countingNumber[index]
    }
}

var object = CountingNumber()
object[0] // this is called subscript
