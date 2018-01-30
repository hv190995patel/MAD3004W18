//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var firstname = String()
firstname = "HARSGH"
var l = firstname.count
print(l)
print("Print String")
for i in stride(from: 0, to: l, by: 1) {
    let d = i
    print(firstname[firstname.index(firstname.startIndex,offsetBy: d)])
}
print("Reverse Order")
for i in stride (from: l, to: 0, by: -1)
{
    let d = i-l-1
    print(firstname[firstname.index(firstname.endIndex,offsetBy: d)])
}
