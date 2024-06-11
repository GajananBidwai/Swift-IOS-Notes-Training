import UIKit
///Delegate : A delegate is a design pattern that allows one object to communicate with another object in a decoupled manner.

//Protocol : A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality. The protocol can then be adopted by a class, structure, or enumeration to provide an actual implementation of those requirements.
//
//Here is the step by step of relationship
//
//1. Define a Protocol
//2. Create a Delegate Property
//3. Implement the Protocol
//4. Set the Delegate : An instance of the delegating class assigns an instance of the delegate class to its delegate property.


protocol Mydelegate{
    func ImplementAction()
}

class A{
    var delegateProperty : Mydelegate?
    
    func performAction(){
        print("Action Performed")
        
        delegateProperty?.ImplementAction()  // Make the reference between both the class
    }
    
    
    
}

class B : Mydelegate{
    func ImplementAction() {
        print("Delegate Recieved their Action")
    }
    
    
}

var objectOfA = A()
var objectOfB = B()

objectOfA.delegateProperty = objectOfB // Internally the method inside the class B is assign to the delegate property of class A so the method inside class B will automatically called that means object of one class is communicate with the object of another class
objectOfA.performAction() // Both the method inside the class are called

