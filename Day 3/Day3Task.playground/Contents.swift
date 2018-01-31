//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Difference Between Tuple and Dictionary
        //TUPLE:
        /*
         If you need to return multiple values from a method
         Tuple can contain different values with different datatype
        */

        //DICTIONARY:
        /*
         dictionary can contain only on datatype value at a time
         */

//Display Data
        var addr = [String:AnyObject]()
        addr["Street:"] = "265 Yorkland Blvd" as AnyObject
        addr["area:"] = "North York" as AnyObject
        addr["Postal Code:"] = "M1H1Y1" as AnyObject

        var data = [String:AnyObject]()
        data["FirstName:"] = "JK" as AnyObject
        data["LastName:"] = "Patel" as AnyObject
        data["Age:"] = 50 as AnyObject
        data["Address:"] = addr as AnyObject
        data["Total Amount:"] = 2000 as AnyObject
        print("Data Is: ",data)


//Function to find factorial of given number and make recursive
        func factorial(of num: Int) -> Int {
            if num == 1 {
                return 1
            } else {
                return num * factorial(of:num - 1)
            }
        }
        let x = 5
        let result = factorial(of: x)
        print("The factorial of \(x) is \(result)")
