import UIKit

//class Student{
//    var name : String
//    var Id : Int
//
//    init(name : String, Id : Int){
//        self.name = name
//        self.Id = Id
//    }
//
//
//}
//var obj = Student(name: "Gajanan", Id: 100)
//print(obj.name)
//var obj1 = obj
//obj1.name = "Amay" // so that's why the classes are referenc type
//print(obj1.name)
//print(obj.name)



////Class is having reference type and because make the changes in address variable so that its reflect on main varibal
///class support inheritance
/// super keyword used to acces call methods properties of superclass
///

//class SuperClass{
//    var name : String
//    var age : Int
//
//    init(name : String , age : Int){ // class required to initialize the properties so it initialize them with declaring it as optionals
//        self.name = name
//        self.age = age
//    }
//
//
//    func test(){
//        print("ABC")
//    }
//}
//
//let obj = SuperClass(name: "Gajanan", age: 22)
//
//
//@objcMembers class Childclass : SuperClass{ //// all the method inside the class become objc
//////  if you ask the system to call your method after one second has passed, you’ll need to mark it with @objc.
//    var schoolName : String
//
//    init(name: String, age: Int, schoolName : String) {
//        self.schoolName = schoolName
//        super.init(name: name, age: age) // super
//
//    }
//    override func test() {
//       super.test()
//        print("lalalallaal")
//
//    }
//}
//let objec = Childclass(name: "Amay", age: 22, schoolName: "RGU")
//
//objec.test()


////Classes support Inheritence

//class A{
//    var name : String
//    var age : Int
//    init(name : String,  age : Int ){
//        self.name = name
//        self.age = age
//    }
//
//
//}
//class B : A{
//    var id : Int
//
//    init(name: String, age: Int, id : Int) {
//        self.id = id
//        super.init(name: name, age: age)
//    }
//}
//
//let obj = B(name: "Gajanan", age: 22, id: 2222)
//print(obj.id)
//let obc = A(name: "sdsd", age: 2)
//print(obc.age)

////OVERRIDING METHOD
//// FINAL KEYWORD - Make the class as final that means that does not inherited
// class dog {
//    func bark(){
//        print("Woof")
//    }
//}
//final class puppy : dog{
//
//    override func bark() {
//        super.bark()
//        print("Yip")
//
//    }
//}
//var puppyObject = puppy()
//puppyObject.bark()


////CLASS ARE REFREENCE TYPE

//class Father{
//    var name : String
//
//    init(name : String){
//        self.name = name
//    }
//}
//class Mother : Father{
//    var names : String
//
//     init(names: String) {
//         self.names = names
//         super.init(name: names)
//    }
//}
//
//var moth = Mother(names: "Gajanan")
//var fath = Father(name: "sjkxbdjh")
//
//print(fath.name)
//print(moth.name)


//class superclass{
//    var name = "Amit"
//}
//
//var obj = superclass()
//print(obj.name)
//
//var objCopy = obj
//objCopy.name = "Bhidu"
//print(objCopy.name)
//
//obj.name = "Ajay"
//print(obj.name)
//print(objCopy.name)


////DEINITIALIZER deini()
/// It deinit the object that was created after the use
/// and aslo code will run after deinitialization of object

//class Person{
//    var name = "Object"
//
//    init(){
//       print("\(name) alive")
//    }
//
//    deinit{  //// this will called when the class Person instances are deinitialized
//        print("\(name) is deinitialized")
//    }
//
//    func printGreeting(){
//        print("Hello \(name)")
//    }
//
//
//}
//
//
//
//for _ in 0...2{
//    let obj = Person()
//    obj.name
//    obj.printGreeting()
//}



//// MAKE THE PROPERTY INSIDE THE CLASS AS LET CONSTANT SO THAT ANY CHANGES CANT AFFECT THEM
//class Person{
//    let name = "Gajanan"
//
//}
//
//var object = Person()
//object.name = "Amit"
//object.name

///POLYMORPHISM
///OUTPUT = here the method test is used in multiple forms and property name is getting override
//class A{
//    var name : String
//    init(name : String){
//        self.name = name
//    }
//    func test(){
//        print("My name is \(name)")
//    }
//}
//class B : A{
//    var age : String
//
//    init(age : String){
//        self.age = age
//        super.init(name: age)
//    }
//    override func test() {
//        print("i'm \(name) years old")
//    }
//}
//class C : A{
//    var profession : String
//
//    init(profession : String){
//        self.profession = profession
//        super.init(name: profession)
//    }
//    override func test() {
//        print("my designation is \(name)")
//    }
//}
//
//
//let a = A(name: "Gajanan")
//let b = B(age: "22")
//let c = C(profession: "Softwear Engineer")
//
//let array = [a, b ,c]
//
//
//for i in array{
//    i.test()
//}

/// TYPECASTING
/// In swift their are two type of tyepcasting as? and as!, optional downcasting (as?) and forced downcasting

//let num1 = 10.6
//let typecast = num1 as? Int  //cannot convert or typecaste it
//print(typecast)
//
//let val: Any = 10.5 // TypeCasting
//print(val as? Int)


/// Conversion

//let num = "5"
//let text = Int(num) // this is called as Conversion not typecasting
//print(text)

//for i in array{
//    //let bObject = i as? B
//
//    if let bObject = array as? B
//    {
//        print(bObject.age)
//    }else if let c = array as? C {
//        print(c.profession)
//    }
//
//
//}
 
//for i in array as? [C] ?? [C](){
//    print(i.test())
//    print(i.profession)
//
//}














///Q1 What output will be produced by below code
///OUTPUT = This is B Class
//class A{
//    func display(){
//        print("This is A Class")
//    }
//}
//class B : A{
//    override func display() {
//        print("This is B Class")
//    }
//}
//var ob = B()
//ob.display()

////Q2 What output will be produced by below code
///OUTPUT = This will produce an error Instance method overrides a 'final' instance method that mean we cannot override on final function
//class A {
//    final func display() {
//        print("this is A class")
//    }
//}
//class B : A {
//    override func display() {
//        print("this is B class")
//    }
//}
//let obj = B()
//obj.display()


///Q3 Which statement is wrong in below code
///OUTPUT = this will produce error cause static cannot be used on object of the class
//class A {
//    static func display() {
//        print("this is A class")
//    }
//}
//let obj = A()
//obj.display()

////Q4 Which statement is wrong in below code
///OUTPUT
/// This will be produce error cause methods, properties should be called on the object only not on class name
//class A {
//    func display() {
//        print("this is A class")
//    }
//}
//A.display()

////Q5 What output will be produced by below code
///OUTPUT = produce error static member does not call on the object
//class User {
//    var name:String
//    static let gender = "Male"
//    init(name:String) {
//        self.name = name
//    }
//}
//let userObj = User(name: "Prem")
//print(userObj.gender)

///Q6 What output will be produced by below code
///
///OUTPUT = print 20 cause
//class Dog {
//    var name:String
//    var age:Int
//    init(name:String, age:Int) {
//        self.age = age
//        self.name = name
//    }
//    convenience init(name:String) {
//        self.init(name:name, age:20)
//    }
//}
//let dogObj = Dog(name: "Dog")
//print(dogObj.age)


///Q7 What output will be produced by below code
///OUTPUT :   Amar will print classes are refernec type can change in each variable copy
//class User {
//    var name:String
//    static let gender = "Male"
//    init(name:String) {
//        self.name = name
//    }
//}
//let userObj1 = User(name: "Prem")
//let userObj2 = userObj1
//userObj2.name = "Amar"
//print(userObj1.name)




///ACCESS CONTROL

struct Person{
    private var id : Int // private is accessibke with the struture and function 
    
    init(id : Int){
        self.id = id
    }
    func test(){
        print("\(id)")
    }
}

let obj = Person(id: 6)
//print(obj.test())
obj.test()



