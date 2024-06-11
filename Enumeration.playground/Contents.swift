import UIKit

//Enumeration
//let result = "Failure"
//let result1 = "Failed"
//let result2 = "Fail"
//
//enum Result{
//    case success
//    case failure
//}
//
//let result3 = Result.success
//
//enum Activity{
//    case bored
//    case talking(topic : String)
//    case playing(gameName : String)
//    case singing(song : String)
//}
//
//let res = Activity.playing(gameName: "Cricket")
//
//print(res)


//enum planet : Int{
//    case earth = 1
//    case mercury
//    case mars
//    case sun
//    case moon
//}
//
//    let resu = planet(rawValue: 1)
//    print(resu)

//let tuples = ("Red", "Green" , "Blue", 0.0)
//print(tuples.3)
//let tuplesKey = (name : "Gajanan" , empId : 232)
//print(tuplesKey.name)


// two different ways to define an enum
//enum weatherTypeee{
//    case sum
//    case sunny
//    case winter
//    case rainy
//    case clody
//}
//
//func headerStatuss(weather : weatherTypeee)->String?{
//    if weather == .sum{
//        return nil
//    }else{
//        return "Hate"
//    }
//}
//headerStatuss(weather: .sum)
//
//
//enum weatherType{
//    case sum, sunny, winter, rainy, clody
//}
//
//func headerStatus(weather : weatherType)->String?{
//    if weather == weatherType.sum{
//        return nil
//    }else{
//        return "Hate"
//    }
//}
//headerStatus(weather: weatherType.rainy)

//enum weatherTypes{
//    case sum
//    case sunny
//    case winter
//    case rainy
//    case clody
//}
//
//func getHaterStatus(weather : weatherTypes)-> String?{
//    switch weather{
//    case .sum:
//        return nil
//    case .sunny, .winter, .rainy:
//        return "Like"
//    case .clody :
//        return "Dislike"
//    default :               // default case will never be executed cause all the                                properties in the enum case are already                                             defined
//        return "Default"
//    }
//}
//
//getHaterStatus(weather: .sunny)


// in the below enum you can easily send the paramter and check condition into it

//enum speed{
//    case car
//    case bike(speed : Int)
//}
//func findSpeed(speed : speed)->String{
//    switch speed{
//    case .car:
//        return "Speed of car"
//    case .bike(let speed) where speed < 10:
//        return "Speed of bike"
//    default :
//        return "Default"
//    }
//
//}
//findSpeed(speed: .bike(speed: 20))


////Q1 Print the output
///Output: Welcome to Closures


//enum names {
//    case Swift
//    case Closures
//}
//    var lang = names.Closures
//        lang = .Closures
//    switch lang {
//        case .Swift:
//            print("Welcome to Swift")
//        case .Closures:
//            print("Welcome to Closures")
//}

////2) Write a function that returns that returns Result enum if the input
///value is > 50, and print the following if pass : “You passed. Grade = A” if fail : “You have failed”

//enum Results {
// case Pass(grade : String?) // A > 90; 90 > A > 70; 70 > C > 50
// case Fail
//}
//
//func checkResult(marks : Int)-> Results{
//
//    switch true {
//    case marks >= 90:
//
//        return Results.Pass(grade: "A")
//    case marks >= 70 && marks < 90:
//        return Results.Pass(grade: "B")
//    case marks >= 50 && marks < 70 :
//        return Results.Pass(grade: "C")
//    default:
//        return Results.Fail
//    }
//}
//
//
//
//let check = checkResult(marks: 60)
//
//switch check {
//case .Pass(grade: let grade):
//    print("You have passed \(grade!)")
//case .Fail:
//    print("You have failed")
//}


//3)Print the output

//// Output : the output will be No rating because the raw value can only perform on integer not on string, In enum each case is having there interger number(like index bases) starting fron 0 to till nomber of cases in enum,
//enum MusicRating : String {
//    case ROCK = "A"
// case JAZZ
// case BLUES
// case METAL
//}
//
//let musicGrade = MusicRating (rawValue : "B")
//print (musicGrade ?? "No Rating")


////4)What will be output of below program
// Raw value are like index based implicitely it start from 0 but if explici delcation from there that will start indexing
//enum WeekDays: Int {
// case Sunday = 1, Monday, Tuesday, Wednesday, Thursday, Friday,
//Saturday
//}
//let day = WeekDays.Tuesday.rawValue
//print("Value of the day is: \(day).")
