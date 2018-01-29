//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


/Check Number greater than 10 and find table or factorial
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
