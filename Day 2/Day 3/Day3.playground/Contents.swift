//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/////DICTIONARIES////

var nameOfIntegers = [Int: String]()
//String Dictionary

nameOfIntegers[16] = "sixteen" //nameofInteger contains 1 key - value pair
print("nameOfIntegers : \(nameOfIntegers)")

nameOfIntegers[28] = "Twenty Eight"
print("dictionary contains : \(nameOfIntegers.count) elements")
print("dictionary : ",nameOfIntegers)

nameOfIntegers = [:] //nameofintegers is once again an empty dictionary of type[Int: String]
print("dictionary contains: \(nameOfIntegers.count) elemenmts")
print("nameOfIntegers : ",nameOfIntegers)

if nameOfIntegers.isEmpty {
    print("Dictionary is Empty")
}
else {
    print(nameOfIntegers)
}

//Dictionary of string and string

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
    print("Airports: \(airports)")
print("The airports dictionary contains \(airports.count) items.") // Prints the airport dictionary contains 2 items

airports["LHR"] = "London Heathrow" //the value of LHR hjas been changed to london heathrow

airports["YYZ"] = "TP International"
airports["AMD"] = "SVP International"
print("airports : ",airports)

let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB")
print("The old value for DUB was \(oldValue).") //Prints the old value fro DUB was Dublin

if let airportName = airports["AMD"] {
    print("The name of the airport is \(airportName).")
}
else {
    print("The airport is not in the airports dictionary.")
}

airports["Mars"] = "Range Rover" // Apple International is not the real airport for APL so delete it
print(airports)
airports["Mars"] = nil //Apl has now been removed from the dictionary
print("airports : \(airports)")

if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is  \(removedValue).")
}
else {
    print("The airports dictionary does not contain a value for DUB.")
} // Prints The removed airports name is Dublin Airpot

for (airportCode, airportName) in airports {
    print(airportCode, airportName)
}

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}

for airportName in airports.values {
    print("Airprt name: \(airportName)")
}

let airportCodes = [String](airports.keys) //airportCodes is ["YYZ", "LHR"]
print("airportCodes : \(airportCodes)")

let airportNames = [String](airports.values) // airportNames is ["Toronto Pearson","London Heathrow"]
print("airportNames : \(airportNames)")


//<KEY,VALUE> pairs
var d1 : Dictionary<String, String> = ["India":"Hindi", "Canada":"English"]
print(d1)
print(d1.description)
print(d1["India"]!)
print(d1["Canada"]!)
print(d1["USA"])      //Display Nil as no value is assigned to it
d1["China"] = "Mandarian"
for (k,v) in d1 {
    print("\(k) -> \(v)")
}

d1["Canada"] = "French"
for (k,v) in d1{
    print("\(k) -> \(v)")
}

var d2 = ["India":"Hindi", "canada":"English"]
for (k,v) in d2 {
    print("\(k) -> \(v)")
}


//Dictionary with any values type

var d3 = [String: AnyObject]()
d3["firstName"] = "JK" as AnyObject
d3["lastName"] = "Patel" as AnyObject
d3["Age"] = Int(50) as AnyObject
d3["salary"] = nil
print("d3",d3)

//Getting as a key, value pair
for(k,v) in d3 {
    print("\(k) -> \(v)")
}

//Getting as a single object


//Declaring Tuples
var x = (10, 20, "Patel")
print(x.0)
print(x.1)
print(x.2)

let http404Error = (404, "Not Found")
print(http404Error)

let(statusCode, statusMessage) = http404Error
print("statusCode:",statusCode)
print("statusMessage:",statusMessage)

let (codeOnly, _) = http404Error
print("codeOnly:",codeOnly)

let errorDescription = (Code: 404, Message: "Not Found")
print(errorDescription.Code,errorDescription.Message)


//WORKING WITH FUNCTIONS//

//Simple Declaration
func add()
{
    print("I am in User Defined Function")
}
add()

func add(n1:Int, _ n2:Int) {
    var sum : Int
    sum = n1 + n2
    print("sum : ",sum)
}
add(n1:10,20)
//add(20,10) Error
//add(n2:30,n1:40) Error

//Single Parameter
func welcome(name:String) {
    print("Hello, \(name)")
}
welcome(name: "H Patel")

//Making paramter label optional using..
func sub(a:Int, _ b:Int)
{
    let c = a - b
    print("Sub : \(c)")
}
sub(a:30, 20)

//Multi Return values and define new label name
func swipe(number1 a: Int, b: Int) -> (Int,Int)
{
    //funcrtion paramters are constants by default
    //var temp = a
    //a = b
    //b = temp
    return (b,a)
}

var (a,b) = swipe(number1: 10, b: 20)
print("a: \(a), b: \(b)")
var (_, c) = swipe(number1: 10, b: 20)
print("c : \(c)")

//inout concept
func swipe(aa: inout Double, bb: inout Double)
{
    let temp = aa
    aa = bb
        bb = temp
}
var x1 = 8.0, y1 = 9.0
swipe(aa:&x1 , bb:&y1 )
print("x : \(x1), y: \(y1)")

//Default Parameter
func simpleInterest(amount:Double, noOfYears: Double, rate:Double = 5.0) -> Double
{
    let si = amount * rate * noOfYears / 100
    return si
}
print("Simple Interest: \(simpleInterest(amount: 1000, noOfYears: 5))")
print("simple Interest: \(simpleInterest(amount: 1000, noOfYears: 5,rate: 10))")

//Variadic Parameters

func display(n:Int...)
{
    for i in n {
        print(i)
    }
}
display(n: 1,2,3,4,5)
display(n: 10,20,30)

//Passing array as parameter
func display(numberValues:Int, parameters:[Int]...)
{
    print("Number of values \(numberValues)")
    for i in parameters {
        print("i: \(i)")
    }
}
var arr = [1,2,3,4,5]
display(numberValues:3, parameters:arr,arr,arr)

//Sum of two array
func display(arrayList:[Int]...) -> [Int]
{
    var array1 = arrayList[0]
    var array2 = arrayList[1]
    var result = [Int]()
    
    if array1.count == array2.count
    {
        for i in 0..<array1.count
        {
            result.append(array1[i] + array2[i])
        }
    }
    return result
}
var a1 = [1,2,3,4,5]
var a2 = [10,11,12,13,14]
var a3 = display(arrayList:a1,a2)
print(a1)
print(a2)
