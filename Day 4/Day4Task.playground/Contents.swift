//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//Escaping closure

func escapingclosure(completionhandler: @escaping () -> Void) {
    
    print("F1")
    
    completionhandler()
    
    return
    
}

escapingclosure {
    
    print("F2")
    
}

//Trailing

unc somefunction(n:Int , closure: (Int) -> Void)
    
{
    
    closure(n * n * n)
    
}

somefunction(n : 20)
    
{ (cube) in
    
    print(cube)
    
}


/*
 
 create class and stucture
 
 */

struct address {
    
    var street = "265 Yorkland Blvd"
    
    var area = "North York"
    
    var postalCode = "M1H1Y1"
    
}

class person {
    
    var firstname = "Harsh"
    
    var lastname = "Patel"
    
    var age = 25
    
    var totalamount = 2000
    
    var locadd = address()
    
}

var personobj = person()

print("firstname : ",personobj.firstname)

print("lastname : ",personobj.lastname)

print("age: ",personobj.age)

print("totalAmount : ",personobj.totalamount)

print("Address is : ",personobj.locadd)
