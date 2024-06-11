import UIKit

//let score1 = 90
//let amPlating = true
//let amNotPlaying = true
//
//if amPlating == amNotPlaying{
//    print("true")
//}else{
//    print("False")
//}
//
//
//if score1 == 90{
//    print("You did excellent")
//}else{
//    print("You did ok")
//}
//
//
//
//switch score1{
//case 0...50:
//    print("You did okay")
//case 50...80:
//    print("You did well")
//case 80...100:
//    print("You did excellent")
//default:
//    print("you failed")
//}





//Loops
//let arrar1 = ["one", "Two", "Three", "Four", "Five"]
//let array2 = [1,2,3,4,5]

    

//let array1 = ["players" , "Haters", "Fakers"]
//let array2 = ["play", "Hate", "Fake"]

//for i in 0...array2.count-1{
//    print("\(array1[i]) gonna \(array2[i])")
//}
    
    
//for i in 0...2{
//    var str = "\(array1[i]) gonna"
//   // print("\(array1[i]) gonna")
//
//    for _ in 1...5{
//       str += " \(array2[i])"
//    }
//    print(str)
//}
  

//While loop

//var num = 0
//
//while true{
//    num = num + 1
//    print(num)
//
//    if num == 100{                 // while loop requires termination condition if you dont give will                                      crash untill its full memory
//        break
//    }
//}

//var number = [1,2,3,4,5,6,7,8,9,0]
//for num in number{
//    if num == 5{
//        break
//    }
//    print(num)
//}


// multiple loops
//outerloop : for i in 1...10{
//    for j in 1...10{
//        var product = i * j
//        print("\(i) * \(j) = \(product)")
//
//        if product == 50{
//            print("Stop")
//            break outerloop
//        }
//    }
//
//}

// Repeat while loop
//var number = 1
//repeat{
//    number += number
//    print(number)
//}while number <= 700


//break
//output : break is used for to stop the loop from running
// for i in 1...10{
//    if i % 2 == 1{
//        break
//    }
//    print(i)
//}
//Continue
//output : If the condition is doesnt matched continue is the keyword that continue the loop run
//for i in 1...10{
//   if i % 2 == 1{
//       continue
//   }
//   print(i)
//}




















////Q1. Print 1 to 100 in reverse order using For loop
//for i in (1...100).reversed(){
//    print(i)
//}

let value = 100

for i in 0...100{
    var res = value - i
    print(res)
}

////Q2. Print all numbers divided by 5 in the range 1 to 100 using while loop
    
//for i in (1...100).reversed(){
//    if i % 5 == 0{
//        print("\(i) is divisible by 5")
//    }
//}


////Q3. Print all even numbers between 1 to 100 - Repeat Loop
//for i in 1...100{
//    if i % 2 == 0{
//        print("Even nombers are \(i)")
//    }
//}

////Q4 Write sample program to compare string/char is Vowel or not

var checkVowel = "Gajanan"

for i in checkVowel{
    if  i == "a" || i == "e" || i == "i" || i == "o" || i == "u"{
        print("String or charecter is having Vowels")
    
    }
}


///Q5. What is the output of this program
//Output :You did OK.
let score = 50
switch score {
case 0..<50:
 print("You failed badly.")
case 50..<85:
 print("You did OK.")
default:
 print("You did great!")
}


////Q5. What is the output of this program
//Output : This is magic of fallthrough
let direction = 1
switch direction {
case 1:
 fallthrough
case 2:
 print("This is magic of fallthrough")
default:
 print("Default case")
 }


let  array = [4,3,2,4,1,3,2,1]
let uniqNumber = array.reduce(0, ^)
print(uniqNumber)
