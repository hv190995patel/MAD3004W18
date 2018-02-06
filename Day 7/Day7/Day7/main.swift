//
//  main.swift
//  Day7
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

//PROTOCOLS

var obj1 = TestA()
obj1.n1 = 20
obj1.display()
obj1.displayValue()

var obj2 : IDisplay = TestA()
obj2.display()

obj2 = obj1 as TestA
obj2.display()

var obj = TestB()
obj.n1 = 30
obj.n2 = 40
obj.display()
obj.displayValue()

var obj3 = obj as TestA
obj3.display()
obj3.displayValue()

var objArith = Arithmetic(n1: 20, n2: 30, n3: 10)
//objArith.calculate()

var objOperation = Operation(n1: 10, n2: 30, n3: 20)
objOperation.calculate()

//Using double extension
let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")
// Prints "One inch is 0.0254 meters"
let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")
// Prints "Three feet is 0.914399970739201 meters"

let aMarathon = 42.km + 195.m
print("A Marathon Is \(aMarathon) meters Long")

//Using String Extension
var s = "Hello"
print(s.length)
print(s.vowels)
print(s.consonants)




