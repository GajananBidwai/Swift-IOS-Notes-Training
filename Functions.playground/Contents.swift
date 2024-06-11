import UIKit

//Normal function
//func printHelloWorld(){
//    print("Hello World")
//}
//
//printHelloWorld()

// Function With Parameters
//func addition(firstValue : Int, secondValue : Int)->[Int]{
//    return [firstValue + secondValue]
//}
//var result = addition(firstValue: 5, secondValue: 5)
//print(result)

// function with paramters
//func countLettersInString(string : String){
//
//    print("the String \(string) has \(string.count) charecters")
//}
//countLettersInString(string: "Gajanan")
//
//
//
//func countLetters(_ str : String){
//    print("the String \(str) has \(str.count) charecters")
//}
//countLetters("Gaja")

// the main difference between these two function is the argument of the function like (_ str : String) is _ is used when you dont want to show what type of argument is when you were call the function
// By using str we can change the logical operation inside the function but we cannot able to see str outside of function when we are calling so we used here (_ str)
// Inspite of

//func count(In Str : String){
//    print("The string \(Str) has \(Str.count) charecters")
//}
//count(In: "Amay")
// in the above function In is used to make function precise

//func employeeName(name : String)-> Bool{
//    if name == "Gajanan" {return true}
//    if name == "Tanmay" {return true}
//    return false
//
//}
//
//var namm = employeeName(name: "Gajanan")
//
//if namm{
//    print("True")
//}else{
//    print("False")
//}
//
//
//if employeeName(name: "Amay"){
//    print("True")
//}else{
//    print("False")
//}


// function with default parameters
//func greet(_ person : String,  nicely : Bool = true){
//    if nicely == true{
//        print("Hello \(person)")
//    }else{
//        print("Same person again")
//    }
//}
//greet("Gajanan")
//greet("Gajanan", nicely: false)


//parameter in the functions are constants by defult  if we want to modify that value then make the function argument as a inout so you can pass the address of the variable during in function call
//
//func doubleTheNumber(_ number : inout Int){
//    number += number
//}
//var num = 10
//doubleTheNumber(&num)


//Assignment on Functions

//Q1 Write sample function which will take input as a number and in function body it will
//input compare variable is positive or negative and return Bool variable

//func positiveNagativeCalculator(number:Int)->Bool{
//    if number > 0{
//        print("Entered number is positive")
//        return true
//    }else if number == 0{
//        print("whole number")
//    }else{
//        print("Number is negative")
//    }
//    return false
//}
//
//positiveNagativeCalculator(number: 0)

//Q2 Write sample program which will take input as a array and in function body it will find
//out max and min number from function and return touple as a output (max,min)


//func maxMinCaculator(number:[Int])->(Int,Int){
//
//    var max : Int = 0
//    var min : Int = 0
//    for i in number{
//        if i > min{
//            min = i
//        }
//        if i < max{
//            max = i
//        }
//    }
//   return (min , max)
//}
//let res = maxMinCaculator(number: [10, 20])
//print(res)

////Q3 what will be out of this program
///Output : error because the return type string is missing

//    func logicTest(number:Int) {
//        if number > 10 {
//            return "Number is greater than 10"
//        }
//            return "Number is smaller than 10"
//    }
//    logicTest(number:5)

//// Q5 What will be output of below program
///Output : function arguments are let constant by default so you dont able to change the values of that paramters if you want it to change then make the funtion argument as inOut type:
/// inOut is make the changes in reference varible and that refelects in function argument itself

//func logicTest( number:  Int)->Int {
// number = number * 10
// return number
//}
//var number = 5
//print(logicTest(number: number))

////Q6 What will be output of below program
////Output : number 1 is greater than num 2
func maxMinValidator(number1:Int, number2:Int) {
    switch (number1, number2) {
        case (let x, let y) where x == y :
            fallthrough
        case (let x, let y) where x > y :
            print("number 1 is greater than num 2")
        case (let x, let y) where x < y :
            print("number 1 is less than num 2")
        default:
            print("deafult")
        }
    }
let resu = maxMinValidator(number1: 1, number2: 0)
print(resu)
