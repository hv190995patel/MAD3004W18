//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Print The str
print(str)

//Print With specifict Text
print("This is our string: \(str)",terminator: "\n")

//use separator for separating multiple prompts
print("1","2","3","4","5",separator: "..")

//Declare Variable
var n1=10

//Print Variable
print("Number 1: ",n1,"String: ",str)

var n2=20
print("Number 2: ",n2)

//addition of 2 numbers
var sum = n1+n2

//print sum of 2 numbers
print("Sum is: ",sum)
print("Sum=", n1+n2)

//n1 = "test"
//print("n1 : ",n1)


//Assign datatype (INT)
var a:Int = 10
print("a = ",a)

//Assign Datatype(String)
var greet:String = "Good Morning"
print("Greetings : ",greet)

//ASSIGN Datatype(Float)
var f:Float = 10.25
print("Number Is: ",f)

//Get Emoji(CTR+WIN+SPACE)
var emoji = "😀"
print("Its A \(emoji) hour")

let pi=3.14
//pi = 3.190
print("Pi = ",pi)

//var p1= 10


//optional datatype
let myNum:Int?
//myNum = 10
myNum = nil
if myNum != nil {
    print("myNum : ", myNum!)
}
else {
    print("myNum is Nil")
}

//optional values
let possibleNumber="Hello"
let convertedNumber:Int?

convertedNumber = Int(possibleNumber)

if convertedNumber != nil {
    print("ConvertedNumber", convertedNumber!)
}
else {
    print("Converted Number is nil")
}

//Loops

for i in 1..<5 {
    print("i=",i)
}

let languages:[String]
languages = ["English","Spansih","French"]
for i in languages{
    print("language is:" , i)
}

//Sum of numbers
var answer: Int = 1
for _ in 1...5{
    answer *= 5;
}
print("answer = ",answer)


//Use of stride
var Interval:Int = 5
for i in stride(from: 0, to: 50, by: Interval) {
    print(i," ",terminator: " ")
}

//While loop
var j = 1
while (j < 5) {
        print( "value of j is \(j)")
    j=j+1
}

//
j=5
repeat {
    print("Repeat : ",j)
    j = j + 2
}
while (j<=10)


//Check Number greater than 10 and find table or factorial
//Factorial Number

var num:Int = 1
var num1:Int = 5
if(num < 10)
{
    for i in 1...10
    {
        num1 = 5 * i
        print("5"," * ",i, " = ",num1)
    }
}
else {
    var n:Int = num + 1
    for i in 1..<n {
        num1 = num1 * i
    }
}


//Switch case
/*
var num1=100
switch num1 {
case 100 :
    print( "Value of num1 is 100")
    //fallthrough
    
case 10,15 :
    print( "value of num1 is either 10 or 15")
    
case 5 :
    print( "Value of num1 is 5")
default :
    print( "default case")
}
*/
