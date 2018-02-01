//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Closures in Swift

//Sorted closure
var months = [4,3,1,6,5,2]

print(months.sorted()) //prints sorted array

//reverse the array
func reverse(_ s1: Int, _ s2: Int) -> Bool {
    
    return s1 > s2
}

var reversedMonths = months.sorted(by: reverse)
print("reversedMonths",reversedMonths)

//arrange in increasing order
func increasing(_ s1: Int, _ s2: Int) -> Bool {
    
    return s1 < s2
}

var increasingMonths = months.sorted(by: increasing)

print("increasing months : ",increasingMonths)

//closure expression syntax

/*
 
 {

 (parameters) -> return type in

 statements

 }
*/

var reverseClosure = months.sorted(by: {
    
    (s1: Int, s2: Int) -> Bool in
    
    return s1 > s2
    
})
print("reverseClosure",reverseClosure)

//inferring parameteer types from contex
var inferTypes = months.sorted(by: {
    
    //(s1, s2) in return s1 < s2
    
    (s1, s2) in s1 < s2 //implicit return
    
})

print("inferTypes : ",inferTypes)



//shorthand argument names

print("shorthand argument : ", months.sorted(by: {$0 < $1}))



//operator methods

print("operator methods : ",months.sorted(by: <))



var three = [1,2,3,4,5,6,8,9,12,15]

print("three : ",three)



var modThree = three.filter ({ $0 % 3 == 0 })

print("modThree : ",modThree)

//even numbers

var eveNum = three.filter ({ $0 % 2 == 0 })

print("eveNum : ",eveNum)

//nested functions closure

func makeIncrement (forIncrement amount: Int) -> () -> Int {
    
    var runningTotal = 0
    
    
    func incrementer() -> Int{
        
        runningTotal += amount
        
        return runningTotal
        
    }
    
    return incrementer
    
}
let incrementByTen = makeIncrement(forIncrement: 10)

print("First Call: ",incrementByTen()) //10
print("Second Call: ",incrementByTen()) //20
print("third call: ",incrementByTen())  //30

let  incrementBySeven = makeIncrement(forIncrement: 7)
print("Increment by seven 1: ",incrementBySeven())
print("Increment By seven 2: ",incrementBySeven())

print("Forth call: ",incrementByTen())  //40

//Closures are reference type
let incrementBySevenAgain = incrementBySeven
print("Increment By seven 3 : " ,incrementBySevenAgain())

//AutoClosures
var errorList = [404,414,402,431,455,440]
print("Total Errors : ",errorList.count)

let debugger = {errorList.remove(at: 0) }
print("total errors: ",errorList.count)

print("Now Solving \(debugger())!")
print("Total Errors : ",errorList.count)
print("Error List : ", errorList)

func solve(error debugger: @autoclosure () -> Int) {
    print("Now Solving \(debugger())!")
}
solve(error: errorList.remove(at: 0))
print("Error List : ",errorList)




