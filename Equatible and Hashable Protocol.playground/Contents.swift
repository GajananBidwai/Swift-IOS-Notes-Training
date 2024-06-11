import UIKit


// Equatible and Hashable protocol??
// MARK : Equatible and hashable protocol is used to check if both the value containing objects are same or not by using Equatible protocol we achieve it easyly

 //Print Different cause value of person operands are differents

//struct Person : Equatable{
//    var name : String
//    var age : Int
//}
//var person1 = Person(name: "Amay ", age: 25)
//var person2 = Person(name: "Amit", age: 24)
//
//if person1 == person2{
//    print("same")
//}else{
//    print("Different")
//}
//
//struct Person : Equatable{
//    var name : String
//    var age : Int
//}
//var person1 = Person(name: "Amay", age: 25)
//var person2 = Person(name: "Amay", age: 25)
//
//if person1 == person2{
//    print("Same")
//}else{
//    print("Different")
//}
//
//
//
//struct School : Equatable {
//    var schoolName : String
//}
//
//struct Person : Equatable{
//    static func == (lhs: Person, rhs: Person) -> Bool {
//        return lhs.school.schoolName.uppercased() == rhs.school.schoolName.uppercased()
//    }
//
//    var name : String
//    var age : Int
//    var school : School
//}
//
//var Person1 = Person(name: "Amay", age: 25, school: School(schoolName: "RGHS"))
//var Person2 = Person(name: "Amay", age: 25, school: School(schoolName: "rGHS"))
//
//if Person1 == Person2{
//    print("Same")
//}else{
//    print("Different")
//}
//
//

//Hashable Protocol
//if you confirm the hashable protocol to both the structure then you no need to implement the hash method

struct company{
    var ownwer : String
}
struct car : Hashable{
    var name : String
    var price : Int
    var companyName : company
    
    static func == (lhs: car, rhs: car) -> Bool {
        return lhs.companyName.ownwer.uppercased() == rhs.companyName.ownwer.uppercased() && lhs.name == rhs.name && lhs.price == rhs.price
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(companyName.ownwer)
    }
   
}

var bmw = car(name: "BMW", price: 1, companyName: company(ownwer: "Gajanan"))
var benz = car(name: "BMW", price: 1, companyName: company(ownwer: "gajanan"))

if bmw == benz{
    print("Same")
}else{
    print("Different")
}
