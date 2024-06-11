import UIKit

// change in one object can not reflect into another object so that structure is value type
// having diffenet type of datatype in one block

//struct Play{
//    var game : String
//    var time : Int
//}
//var object = Play(game: "Cricket", time: 20)
//print(object)
//var object2 = Play(game: "Football", time: 30)
//print(object2)

////FUNCTION INSIDE THE STRUCTURE
////
//struct Person{
//    var clothes : String
//    var shoes : String
//
//    func describe(){
//
//        print("Amay wear \(clothes) on \(shoes)")
//    }
//}
//var obj = Person(clothes: "Casuals", shoes: "Sneakers")
////let obj1 = Person(clothes: "Formal", shoes: "Formal")
//var obj1 = obj
//obj1.clothes = "Formal"
//print(obj.clothes)
//print(obj1.clothes)

//obj.clothes = "Rituals" // structure objects are mutable we can reassign the value
//obj.describe()
//obj1.describe()

////PROPERTIRS OF STRUCTURE


//// PROPERTY OBSERVER
//struct Person1{
//    var clothes : String{
//        willSet{ ////WILL SET AND DID SET ARE THE PROPERTY OBSERVER
//            updateUI(msg: "Am wearing \(clothes) clothes to \(newValue)")
//        }
//        didSet{
//            updateUI(msg: "I just wear \(oldValue) clothes to \(clothes)")
//        }
//    }
//}
//func updateUI(msg : String){
//    print(msg)
//}
//var tayler = Person1(clothes: "T-shirts")
//tayler.clothes = "Shorts"

////COMPUTED PROPERTIES

//struct Employee{
//    var age : Int
//    var getInDogsYeasr : Int{
//        get{
//            return age * 7
//        }
//    }
//}
//
//var fan = Employee(age: 25)
//
//print(fan.getInDogsYeasr)


////STATIC PROPERTIES AND METHOD OF STRUCT
/// Can access non static property from the struct but not able to access static property from the struct
//struct Employee{
//    static var companyName  = "Neo Soft"
//    var employeeName : String
//    var empId : Int
//}
//var object = Employee(employeeName: "Gajanan", empId: 12305)
//print(object)
//var obj = Employee.companyName
//print(obj)


//struct sport{
//    var sportName : String
//    var isOlympicSport : Bool
//
//    var olympicStatus : String{
//        if isOlympicSport{
//            return "\(sportName) is olympic sport"
//        }else{
//            return "\(sportName) is not a olympic Sport"
//        }
//    }
//}
//var object = sport(sportName: "Cricket", isOlympicSport: true)
//
//print(object.olympicStatus)

////Property Observer
/// is called before and after property changes
/// how much time the value of property changes that much time the did set called
/// will set is called before the value assigned and didset is called after the value assigned
//struct Progrss{
//    var name : String
//    var amount : Int{
//        willSet{
//            print("\(newValue)")
//        }
//        didSet{
//            print("\(name) is now \(amount)% is completed ")
//        }
//    }
//}
//var objec = Progrss(name: "Loading Task", amount: 30)
//objec.amount = 40
//objec.amount = 70
//objec.amount = 100
//

/// METHOD INSIDE STRUCTURE

//struct population{
//    var numberOfPopulation : Int
//
//    func countPopulation()->Int{
//        return numberOfPopulation * 2
//    }
//}
//
//var object = population(numberOfPopulation: 2000000)
//print(object.countPopulation())

//// LAZY KEYWORD
//Creating properties only one when they are needed
//struct FamilyTree{
//    init() {
//        print("Creating Family tree")
//    }
//}
//struct Person{
//    var name : String
//    lazy var familyTree = FamilyTree()
//
//    init(name : String){
//        self.name = name
//    }
//
//}
//var obj = Person(name: "Gajanan")
////obj.init(name: "Gajanan")
//print(obj.familyTree) //So, if you want to see the “Creating family tree!” message, you need to access the property at least once:
//


////MUTATING KEYWORD -
///In case of value type by defalut structure and enum are immutable
///Structure doesn't know properties are used by constant or variable
///By default struture is constant  and the parameter inside th method is also constant so that struture cannot make changes inside the struct paramter so if we want to make changes then make the method as mutating mean can change

////In case of class (Reference type) the properties are inside the class are variable we can modify the value by creating let constant object
//class Square{
//    var width = 2
//    var height = 1
//
//    func area()->Int{
//        return width * height
//    }
//    func scaleUp(value : Int){
//        width *= value
//        height *= value
//    }
//
//
//}
//let square = Square()
//square.area()
//square.scaleUp(value: 3)
//square.area()
//square.width = 30


/// By default structure is immutable and the property inside the structure are also immoutable so if we created the objext of structure as let constant then all the properties become constant, and if we wanted to make the changes in to the property then make the object as var
/// But in case of class, class are mutable type can make changes
//struct Rectangle{
//    var width = 2
//    var height = 1
//
//    func area()->Int{
//        return height * width
//    }
//
//    mutating func scaleBy(value : Int){ // struct need make the funtion as mutating
//         width *= value
//         height *= value
//    }
//
//}
//var rect = Rectangle(width: 10, height: 10)
//rect.area()
//rect.scaleBy(value: 3)
//rect.area()


////PRPERTIES AND METHODS OF STRINGS
    
//var string = "Dontletmedown"
//string.append("Itsokay")
//print(string)
//print(string.uppercased())
////string.sorted()
//print(string.sorted())
//print(string.hasPrefix("Do"))
//print(string.hasSuffix("le"))
//print(string.remove(at: string.startIndex))


////METHODS AND PROPERTIES OF ARRAY

var array = ["GAJANAN", "Amit", "Anuj" , "Amol" ]
array.append("Ajay")
array.index(after: 0)
array.description.uppercased()
array.remove(at: 1)
array.index(before: 1)
array.insert("Amay", at: 0)
array.sorted()
array.joined()
array.shuffle()

////Q1 What output will be produced by the below code?
///Output : print test
struct User {
    fileprivate (set) var name = "Hello"
}
    var obj = User()
    obj.name = "test"
    print(obj.name )

struct Employee {
    var salary:Double
    init(salary:Double) {
    self.salary = salary
    }
}


var emp = Employee(salary: 10000)
emp.salary = 2000
print(emp.salary )

////Q2 What output will be produced by the below code?
///Output : 2000.0
struct Animal {
 let name: String
 let age :Int

 init(name:String, age:Int = 30) {
 self.name = name
 self.age = age
 }
}
let animalObj = Animal(name: "Dog")
print(animalObj.age)



struct Country {
    private var name:String = ""
    var countryName:String {
    set {
        name = newValue.capitalized // capitalized is the property that make the first letter of the string as in capital caps
    }
    get {
        return name
        }
    }
}
var country = Country()
country.countryName = "india"
print(country.countryName)


struct Animal {
 var name: String
 var age :Int

 init(name:String, age:Int = 30) {
 self.name = name
 self.age = age
 }
}
let animalObj = Animal(name: "Dog", age: 50)
var dog = animalObj
dog.age = 10
dog.name = "Moti"
print(animalObj.age, animalObj.name)
