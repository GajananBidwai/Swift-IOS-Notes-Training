import UIKit


///TOPIC FOR CONCURRENCY AND GCD
///What is concurrency and why?
///what is parallalism
///concurrency VS parallalism
///time slicing, content switching multicore CPU's
///How to achieve concurrency
///Multithreading (creating threa manually
///multithreading(recommanded way)
///GCD, Operation queue, task group, actor
///GCD
///Synchronous ans asynchronoue operation
///Misconception between sync Vs serial & Asyn Vs concurrent
///Queues - serial, concurrent, system provide and cutom
/// Target Queue
/// Dispatch Group
///
/// Dispatch Work Item
/// Dispatch Barrier
/// Dispatch semaphore
/// Dispatch Source
///
/// Operation and operation queue
///Task
///Async and Await


//What is concurrency and why?
///= The fact of two or more event and cicumstances happening or existing at the same time

///what is parallalism? : The state of being parallel and corresponding in same way, It is use of multiple proccessing elements simalteniously for solving any problem. more resources are involves in parrallalism
///parallalism gives more spped but it involves more resource so we avoid it to use


///How to achieve concurrency : Concurrency can be achieved by time slicing and context switching

///Context switching = it basically mean switching of the context in a context in a nutshell is the collection of values which needs to be loaded in various programm registered the stack pointer registerd and the programm pointer registered and various of the registered in order to start or resume the exucution of a thread so that is context switching

///Time slicing : Basically The period which schedule a grands to which thread before the presion ocuures,
///multiple task are executed at the same point of time although they are not

///PROBLEMS WITH CONCURRENCY : Only one problems are there with concurrency that is DATA INCONSISTENCY
/// How to achieve concurrency : We can achieve concuurency BY MULTITHREADING :  the process by which the main thread assigns tasks to different background threads. Multithreading in Swift aims to increase application performance by concurrently scheduling tasks on many threads.

//How to achieve multithreading?
///1) Aachieving multithreading by creating thread manually
///2)GCD
///3) Operation queue
///4) modern concuurency in swift

///1) Manual thread creating


//class customThread{
//    func creatThread(){
//        let thread : Thread = Thread(target: self, selector: #selector(threadSelector), object: nil)
//        thread.start()
//    }
//
//    @objc func threadSelector(){
//        print("Custom thread is in action")
//    }
//}
//
//let object = customThread()
//object.creatThread()

///Problems with manual thread Creation so that we cant make the thread manually

///1) Responsibility to manage the thread in system conditions
///2) Deallocation Once they have finished execution
///3) Impropper management may cause memory leak
///4) Autorealise pool will not manage the threads creating by us
///5) maintaining the order of execution

/// TO OVERCOME WITH THESE PROBLEMS APPLE HAS PROVIDE WHICH TAKES CARE OF ALL THIS MESS WE ARE JUST SUPPOSE TO DELEGATE OUR TASK AND THE THREAD AND ORDER OF EXECUTION WILL BE TAKEN CARE BY THEM

///GCD = GRAND CENTRAL DISPATCH : GCD  is a queue based api's that allow to execute closure on workers pool in first in first out order.(FIFO order)
/// GCD decides which thread is used to execute a task is handled by grand central dispatch, not a developer and execute them on an appropriate dispatch queue

///DISPATCH QUEUE : It is as abstration layer on top of queue
///GCD manges a collection of dispatch queues they are usually reffered as queues the work submitted to the dispatch queue is executed on a pool of thread
///GCD will execute the work serially or concurrently but always in a FIFO order
/// An Application can submit a task to a queue in the form of blocks either synchronouly and Asynchronously

///SYNCHRONOUSLY : Block the execution till the current task is completed in simple words suppose there are lot of task to completed the order of execution of the task should be in queue Once the current task is completed then only it goes for execution of another next task
///ASYNCHRONOUS :(DOES NOT BLOCK THE CURRENT EXECUTION) Continue the execution of current task while the new task will executed asynchronously
///control wriiten from the method immediately and start executing other task

///SERIAL AND CONCURRENT QUEUE
///SERIAL = One task at a time
///CONCURRENT = Multiple task at a time, Even in concurrent task will be dequeued serially. in a fixed order i.e FIFO.


//var counter = 1
//DispatchQueue.main.async { // Main thread is serial so the order of execution should be IN FIFO
//    for i in 0...3{
//        counter = i
//        print(counter, "one")
//    }
//}
//
//for i in 4...6{   ///It will be executed first cause it dont  have an execution on async, main etc so the priority will                                                   goes to this loop first
//    counter = i
//    print(counter, "two")
//}
//
//DispatchQueue.main.async {
//    counter = 9
//    print(counter, "three")
//}



///DISPATCH QUEUE : IT IS AN ABSTRCTION LAYER ON THE TOP OF THE QUEUE
/// There are 3 type of queues
/// 1) Main Queue
/// 2) Globle concurrent queue
/// 3) Custom queue

///1) Main queue
///-is System created
///-Serial
///-Uses Main thread
///UIKIT is tied on main thread so UI realated thing can be performed on main thread

///2) GLOBAL CONCURRENT QUEUE
///- System created
///- Concurrent(order or dexecution)
///- Do not use main thread (GCQ do not use main thread at all
///- priority of thses queues are decided by Quality of services  )



///Dispatch queue is on main thread so to check it execution is on main thread or not and
//DispatchQueue.main.async {
//    print(Thread.isMainThread ? "Execution is on main thread" : "Execution is on some other thread")
//}

//that prooves that global concurrent queue doesn't uses main thread
// NO matter what Quality of services then only it doen't used main thread
//DispatchQueue.global(qos: .userInteractive).async {
//    print(Thread.isMainThread ? "Execution is on main thread" : "Execution is on global concurrent queue")
//}



///WHAT IS QUALITY OF SERVICES
///1) User Interactive
///2) User Initiated
///3) Utility
///4) BackGround

///Sppose we have multiple task that can be performed on single core devices simaltaniously but due to single core your system goes heat up so thats why old CPU is having a fan near to the motherboard so thats become cool, but now a days we can see that there is no fan to the cpu why? so to avoid this problem Quality of service will came in to the picture that means proratization of different task for execution
///QOS - This concept is used to manage the prioritization of tasks in concurrent programming, ensuring that critical tasks receive the necessary resources and attention from the system.
///THE PRIORITY OF EXECUTION TASK SHOULD BE PERFORMED IN FALLOWING MANNER ONLY i.e
///1) USER INTERACTIVE : Animation = Involved in updating UI
///2) USER INITIATED : Immediate Result = Data required for seamless user experience
///3) UTILITY : Long running task  = is the user aware of the process ? Yes
///4) BACKGROUND : Not visible for the user ? No

///Another more QOS are there i.e
///1) Default - fall under user interactive and user initiated
///2) Unspecifies - Absences of QOS information


//Suppose we have two differnet task to perform on two different thread but the order of execution can only depends upon the qos i.e userinteractive will execute first

//DispatchQueue.global(qos: .background).async { // sencondly execution
//    for i in 11...21{
//        print(i)
//    }
//}
//
//DispatchQueue.global(qos: .userInteractive).async { // first it will be executed
//    for i in 0...10{
//        print(i)
//    }
//}

//let coustomQueue : DispatchQueue = DispatchQueue(label: <#T##String#>,
//                                                 qos: <#T##DispatchQoS#>,
//                                                 attributes: .,
//                                                 autoreleaseFrequency: <#T##DispatchQueue.AutoreleaseFrequency#>,
//                                                 target: <#T##DispatchQueue?#>)



///WHAT IS ATTRIBUTE :
///It will takes 3 parameters
///1) concurrent : by default all the queue are serial for make them to concurrent  .concuurent is used
///2) InitiallyInactive : initially inactive that means execution of the task that can start at later point of time then you can use initially inactive
///3) both of them : pass both of them in to an array so that both of them are used at same time


///Target Queue : a target queue is a dispatch queue to which another dispatch queue or dispatch source submits its tasks. It is essentially the destination queue that executes the tasks. Target queues help organize and manage the execution context of different queues and sources, allowing for hierarchical queue management.
///
///-  A custom queues are used behind the scene
///- dispatchqueue priority is inherited from its target queue
///- If we dont specify the target queue its default priority is global queue by default
///
///IMP : if you add the target then the behaviour of the target gets inherited
///E,g

let a = DispatchQueue(label: "A")
let b = DispatchQueue(label: "B",attributes: .concurrent, target: a) /// target is a by default a is serail queue and the target for b queue will become serial if it is concurrent also then also it become serial so that the b queue will also print serially

a.async {
    for i in 0...5{
        print(i)
    }
}
a.async {
    for i in 6...10{
        print(i)
    }
}

b.async {
    for i in 11...15{
        print(i)
    }
}
b.async {
    for i in 15...20{
        print(i)
    }
}
//

/// Here we will get an error cause : You cannot change the  target of an already activated queue
//b.setTarget(queue: a) //
//
let c = DispatchQueue(label: "c",attributes: [.concurrent, .initiallyInactive])

c.setTarget(queue: a)
c.async {
    print("Testing Activation of queue")
}
c.activate() // here i can activate the the queue


///AUTO REALEASE FREQUENCY  : constants indicates the frequency with which a dispacthqueue auto realease object
///It's having 3 option here
///1) Inherit : Behaviour is inherited from the target queue ( default behaviour)
///2) workItem : Individual auto release pool
///3)never : never setup an individual auto release pool



///DISPATCH GROUP
///Multiple task can be grouped together
///we can wait for the task to be finished or can continue with some other task and can get notified when task in the group completes
///Dispatch group mainly involes 4 different functioon
///1) Enter() : which tells the system that one task thats enters the dispatch group increase the counter variable by one and whenever leave() will be called just reduce the counter variable so whenever the enter will be balanced against the leaves then the notify callback function will be called
///2) Leave() : whenever all the task into dispatch group are completed then leave will be called
///3) Wait() : Execution of the currenet thread will stop and it resume only when the execution of dispatch group item will completed, do not use it on main thread cause main thread perform uikit realted task so the bad user exerience can happen cause we are made user to wait
///4) Notify() : whenever the enter will be balanced against the leaves then the notify callback function will be called
/// So it is very important to balance enter VS leave otherwise app will crash at that time the notify function will be called

 
//let group = DispatchGroup()
//
//    group.enter()  // Increment the task count
//
//    DispatchQueue.global().async {
//    // Perform some async task
//    print("Task 1 started")
//    sleep(4)  // Simulate a time-consuming task
//    print("Task 1 completed")
//    group.leave()  // Decrement the task count
//}
//
//    group.enter()  // Increment the task count
//
//    DispatchQueue.global().async {
//    // Perform another async task
//    print("Task 2 started")
//    sleep(1)  // Simulate a time-consuming task
//    print("Task 2 completed")
//    group.leave()  // Decrement the task count
//}
//
//    group.notify(queue: DispatchQueue.main) {
//    // This block will be executed when all tasks in the group have completed
//    print("All tasks completed")
//}

// Output:
// Task 1 started
// Task 2 started
// Task 2 completed
// Task 1 completed
// All tasks completed


///Dispatch Work Item : a DispatchWorkItem represents a unit of work that can be executed asynchronously on a dispatch queue. It allows you to encapsulate a block of code that you want to execute later. This can be useful for creating reusable, cancelable, and configurable tasks.
///FEATURE
///Reusability: You can reuse a DispatchWorkItem by executing it multiple times.
///Cancellation: You can cancel a DispatchWorkItem before it executes.


// Create a DispatchWorkItem
//let workItem = DispatchWorkItem {
//    print("Work item is executing")
//    // Perform some task
//    sleep(2) // Simulate a time-consuming task
//    print("Work item has completed")
//}
//
//// Execute the work item on a global queue
//DispatchQueue.global().async(execute: workItem)
//
//// Optionally, you can wait for the work item to complete
//workItem.wait()
//
//print("All tasks have completed")




// Create a DispatchWorkItem
//let workItem = DispatchWorkItem {
//    for i in 1...5 {
//        // Check if the work item has been canceled
//        guard !workItem.isCancelled else {
//            print("Work item was cancelled")
//            return
//        }
//        print("Performing task \(i)")
//        sleep(1) // Simulate a time-consuming task
//    }
//    print("Work item has completed")
//}
//
//// Execute the work item on a global queue
//DispatchQueue.global().async(execute: workItem)
//
//// Simulate some condition to cancel the work item
//DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
//    workItem.cancel()
//}
//
//// Optionally, you can wait for the work item to complete
//workItem.wait()
//
//print("All tasks have completed")


///DISPATCH WORKITEM FLAG  : they are the attributes through which we are defined the behaviour of dispatch work item
///Its QOS class whather to create a barrier or spawn a new detached thread
///There are 6 flags which are used as a dispatch workitem flag
///1) Assign current context :  set the attributes for the work item to match the attributes to the current execution context
///2) Deatched : disassociate the attributes of workitem from the current execution context
///3) EnforceQOS : it enforcis the quality of services of the workitem over the QOS of the current execution context
///4) Inherit QOS : it will inhertite the QOS set on the current execution context to the workitem
///5)noQos : No QOS will assign to the workitem
///6)barrier : (MOST USEFULL) (NO OTHER TASK CAN BE EXECUTED PARLALLY): barrier flag is used to avoid the race condtion e.g = there are 3 task that can be executed concurrently and also have  another 2 task that also executed concurrently but inbetween those two tasks NO OTHER TASK SHOULD BE EXECUTED AT THAT TIME WHEN THIS PERTICULAR TASK IS BEING EXECUTED it is kind of barrier
///Cause the work item should be act as barrier block when submitted to a concurrent queue

//How to achieve barrier in GCD
//import Foundation
//
//// Create a concurrent queue
//let concurrentQueue = DispatchQueue(label: "com.example.concurrentQueue", attributes: .concurrent)
//
//// Shared resource
//var sharedArray: [Int] = []
//
//// Adding read tasks
//for i in 1...5 {
//    concurrentQueue.async {
//        let arrayCopy = sharedArray
//        print("Read task \(i): \(arrayCopy)")
//    }
//}
//
//// Adding a barrier task (write operation)
//concurrentQueue.async(flags: .barrier) {
//    sharedArray.append(1)
//    print("Barrier task: write operation performed")
//}
//
//// Adding more read tasks
//for i in 6...10 {
//    concurrentQueue.async {
//        let arrayCopy = sharedArray
//        print("Read task \(i): \(arrayCopy)")
//    }
//}
//
//// Giving time for all tasks to complete
//Thread.sleep(forTimeInterval: 2)

///Dispatch Semaphone  : It will deal with the problem of Race condition
///USECASE : bank acoount :  multiple threads are tried to modify the same resources so in that condition race condition will be happend

///Critical Section : Part of a program which tries to access shared resources
///When critical section is accessed by multiple thread at the same time there are strong chances of data inconsistency.
///Solution is exclusive access that means if shared resources changed by one thread the other gets a updates value in this case called semaphores
///By using these two function we can achive semaphore and avoid multithreading
///wait() : decrement the counter value by 1
///single() : Increment the counter value by 1
///
import Foundation

// Create a semaphore with an initial count of 2 (allowing 2 concurrent accesses)
let semaphore = DispatchSemaphore(value: 2) // Only 2 have access to modify the shared resources(e.g - Bank balance)

// A shared resource
var sharedResource = [Int]()

// A global concurrent queue
//let queue = DispatchQueue.global()

// Function to simulate work with the shared resource
func accessSharedResource(taskNumber: Int) {
    // Wait to acquire the semaphore
    semaphore.wait()
    
    // Simulate a task accessing the shared resource
    print("Task \(taskNumber) is accessing the shared resource")
    Thread.sleep(forTimeInterval: 2) // Simulate a time-consuming task
    sharedResource.append(taskNumber)
    print("Task \(taskNumber) has finished accessing the shared resource")
    
    // Release the semaphore
    semaphore.signal()
}

// Add multiple tasks to the queue
for i in 1...5 {
    DispatchQueue.global().async {
        accessSharedResource(taskNumber: i)
    }
}

// Giving time for all tasks to complete
Thread.sleep(forTimeInterval: 12)
print("Final shared resource content: \(sharedResource)")
